package com.spshop.model;

public class ShopBasket extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3326758863003867522L;
	
	private User user;
	private ShopBasketItem items;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public ShopBasketItem getItems() {
		return items;
	}
	public void setItems(ShopBasketItem items) {
		this.items = items;
	}
}
