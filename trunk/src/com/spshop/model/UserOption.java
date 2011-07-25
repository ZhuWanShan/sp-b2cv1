package com.spshop.model;

public class UserOption extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1976590524674580292L;
	
	private String optional;
	private String value;
	private OrderItem orderItem;
	public String getOptional() {
		return optional;
	}
	public void setOptional(String optional) {
		this.optional = optional;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public OrderItem getOrderItem() {
		return orderItem;
	}
	public void setOrderItem(OrderItem orderItem) {
		this.orderItem = orderItem;
	}
	
}
