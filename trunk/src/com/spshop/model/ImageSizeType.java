package com.spshop.model;

public enum ImageSizeType {
	OPTION("OPTION","Option"),
	SITE_LOGO("SITE_LOGO","Site Logo"),
	PRODUCT_NORMAL("PRODUCT_NORMAL","Product Normal");
	private String value;
	private String title;
	private ImageSizeType(String value,String title){
		this.value = value;
		this.setTitle(title);
	}
	public String getValue() {
		return value;
	}
	private void setTitle(String title) {
		this.title = title;
	}
	public String getTitle() {
		return title;
	}
}
