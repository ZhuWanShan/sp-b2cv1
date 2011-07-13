package com.spshop.model;

public enum ImageSizeType {
	OPTION("OPTION"),
	SITE_LOGO("SITE_LOGO");
	private String value;
	private ImageSizeType(String value){
		this.value = value;
	}
	public String getValue() {
		return value;
	}
	
}
