package com.spshop.model;

public class UserOption extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1976590524674580292L;
	private ProductOption option;
	private ProductionOptionItem selectedItem;
	
	public ProductOption getOption() {
		return option;
	}
	public void setOption(ProductOption option) {
		this.option = option;
	}
	public ProductionOptionItem getSelectedItem() {
		return selectedItem;
	}
	public void setSelectedItem(ProductionOptionItem selectedItem) {
		this.selectedItem = selectedItem;
	}
	
}
