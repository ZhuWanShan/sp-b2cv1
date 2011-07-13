package com.spshop.model;

import java.util.List;

public class ShopBasketItem extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 394038523186596414L;
	
	private Product product;
	private int quantity;
	private List<UserOption> userOptions;
	private ShopBasket basket;
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
	public List<UserOption> getUserOptions() {
		return userOptions;
	}
	public void setUserOptions(List<UserOption> userOptions) {
		this.userOptions = userOptions;
	}
	public ShopBasket getBasket() {
		return basket;
	}
	public void setBasket(ShopBasket basket) {
		this.basket = basket;
	}
	
}
