package com.spshop.model;

public enum SelectType {
	SINGLE("SINGLE"),
	MULTIPLE("MULTIPLE");
	private String value;
	private SelectType(String value){
		this.value = value;
	}
	
	public String getValue(){
		return value;
	}
}
