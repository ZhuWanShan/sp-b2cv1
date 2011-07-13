package com.spshop.model;

public class Coupon extends Promotion{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7687544509171356012L;

	private String code;
	private float value;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public float getValue() {
		return value;
	}
	public void setValue(float value) {
		this.value = value;
	}

}
