package com.spshop.web.view;

import com.spshop.model.User;
import com.spshop.model.cart.ShoppingCart;

public class UserView {

	private float currencyRate;
	private String currencyCode;
	private ShoppingCart shoppingCart;
	private User loginUser;
	private String requestPage;

	public float getCurrencyRate() {
		return currencyRate;
	}

	public void setCurrencyRate(float currencyRate) {
		this.currencyRate = currencyRate;
	}

	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}

	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}

	public User getLoginUser() {
		return loginUser;
	}

	public void setLoginUser(User loginUser) {
		this.loginUser = loginUser;
	}

	public String getRequestPage() {
		return requestPage;
	}

	public void setRequestPage(String requestPage) {
		this.requestPage = requestPage;
	}
}
