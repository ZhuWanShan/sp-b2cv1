package com.spshop.admin.client;

public enum AccordionMenuType {
	
	IMAGE_MANAGEMENT("IMAGE_MANAGEMENT"),
	PRODUCT_MANAGEMENT("PRODUCT_MANAGEMENT");
	
	private String value;
	private AccordionMenuType(String value) {
		this.setValue(value);
	}
	private void setValue(String value) {
		this.value = value;
	}
	public String getValue() {
		return value;
	}

}
