package com.spshop.admin.client;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.google.gwt.user.client.Random;
import com.spshop.model.Component;
import com.spshop.model.Category;

public class QueryResult <T extends Component> implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5054010552469364355L;
	
	private int pageCount = 0;

	public List<T> currentPageData(){
		ArrayList<T> result= new ArrayList<T>();
		mockData(result);
		return result;
	}
	
	private void mockData(List<T> list){
		list.addAll(randomResult());
	}
	
	@SuppressWarnings({ "deprecation", "unchecked" })
	private List<T> randomResult(){
		 List<T>  rs = new ArrayList<T>();
		 for (int i = 0; i < 24; i++) {
			Category component = new Category();
			component.setId(Random.nextInt(99999));
			component.setName("Title"+Random.nextInt(99999));
//			component.setStatus("XL");
			component.setCreateDate(new Date(2011,Random.nextInt(12),Random.nextInt(31)));
			component.setUpdateDate(new Date(2011,Random.nextInt(12),Random.nextInt(31)));
			rs.add((T)component);
		}
		 pageCount = 11;
		 return rs;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
}
