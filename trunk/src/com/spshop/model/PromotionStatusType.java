package com.spshop.model;

public enum PromotionStatusType {
	DISABLED("DISABLED"),
	ENABLED("ENABLED");
	
	private String value;
	private PromotionStatusType( String value){
		this.value = value;
	}
	
	public String getValue(){
		return value;
	}
}
