package com.spshop.model;

public class Configuration extends Component{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6830864436623220292L;
	private String value;
	private ValueType type;
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public ValueType getType() {
		return type;
	}
	public void setType(ValueType type) {
		this.type = type;
	}
	
}
