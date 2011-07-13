package com.spshop.model;

import java.util.List;

public class ProductOption extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8504143946515106133L;
	
	private String description;
	
	private List<ProductionOptionItem> items;
	
	private SelectType selectType;
	
	private ProductionOptionItem defaultOption;
	
	private Product product;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<ProductionOptionItem> getItems() {
		return items;
	}

	public void setItems(List<ProductionOptionItem> items) {
		this.items = items;
	}

	public void setSelectType(SelectType selectType) {
		this.selectType = selectType;
	}

	public SelectType getSelectType() {
		return selectType;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Product getProduct() {
		return product;
	}

	public void setDefaultOption(ProductionOptionItem defaultOption) {
		this.defaultOption = defaultOption;
	}

	public ProductionOptionItem getDefaultOption() {
		return defaultOption;
	}
	
}
