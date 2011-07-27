package com.spshop.model;

import java.util.List;

public class ProductOption extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8504143946515106133L;
	
	private String description;
	
	private List<ProductOptionItem> items;
	
	private String strSelectType;
	
	private String defaultValue;
	
	private Product product;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<ProductOptionItem> getItems() {
		return items;
	}

	public void setItems(List<ProductOptionItem> items) {
		this.items = items;
	}

	public void setSelectType(SelectType selectType) {
		this.strSelectType= selectType.getValue();
	}

	public SelectType getSelectType() {
		if(strSelectType==null){
			return null;
		}
		return SelectType.valueOf(strSelectType.toUpperCase());
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Product getProduct() {
		return product;
	}

	public void setStrSelectType(String strSelectType) {
		this.strSelectType = strSelectType;
	}

	public String getStrSelectType() {
		return strSelectType;
	}

	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}

	public String getDefaultValue() {
		return defaultValue;
	}

	
}
