package com.spshop.model;

import java.util.List;


public class OrderItem extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6303793659582817131L;

	private Order order;
	private Product product;
	private int quantity;
	private float finalPrice;
	private List<UserOption> userOptions; 
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(float finalPrice) {
		this.finalPrice = finalPrice;
	}
	public void setUserOptions(List<UserOption> userOptions) {
		this.userOptions = userOptions;
	}
	public List<UserOption> getUserOptions() {
		return userOptions;
	}
	
}
