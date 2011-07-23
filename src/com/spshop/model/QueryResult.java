package com.spshop.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;


public class QueryResult <T extends Component> implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5054010552469364355L;
	
	private String componentType;
	
	private int recordCount = 0;
	
	private List<T> result= new ArrayList<T>();

	public List<T> currentPageData(){
		return result;
	}
	
	public QueryResult<T> mockImageData(){
		result.addAll(randomImageResult());
		setComponentType(Image.class.getName());
		return this;
	}
	
	@SuppressWarnings({ "deprecation", "unchecked" })
	private List<T> randomImageResult(){
		 List<T>  rs = new ArrayList<T>();
		 for (int i = 0; i < 20; i++) {
			Image component = new Image();
			component.setId(new Random().nextInt(99999));
			component.setName("Name"+new Random().nextInt(99999));
			component.setSizeType(ImageSizeType.PRODUCT_NORMAL);
			component.setCreateDate(new Date(2011,new Random().nextInt(12),new Random().nextInt(31)));
			component.setUpdateDate(new Date(2011,new Random().nextInt(12),new Random().nextInt(31)));
			rs.add((T)component);
		}
		 recordCount = 999;
		 return rs;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setComponentType(String componentType) {
		this.componentType = componentType;
	}

	public String getComponentType() {
		return componentType;
	}
	
}
