package com.spshop.model;

public class ProductOptionItem extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3876490399646625342L;
	private String value;
	private Image icon;
	private String altTitle;
	private String displayName;
	private ProductOption option;
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public Image getIcon() {
		return icon;
	}
	public void setIcon(Image icon) {
		this.icon = icon;
	}
	public String getAltTitle() {
		return altTitle;
	}
	public void setAltTitle(String altTitle) {
		this.altTitle = altTitle;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	public void setOption(ProductOption option) {
		this.option = option;
	}
	public ProductOption getOption() {
		return option;
	}
	
}
