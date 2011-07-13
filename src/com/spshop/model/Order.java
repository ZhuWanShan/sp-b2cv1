package com.spshop.model;

import java.util.List;

public class Order extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8785205423133606769L;
	
	private String customerName;
	private String customerCompany;
	private String customerAddress;
	private String customerTelephone;
	private String customerContry;
	private String customerEmail;
	private String customerZipcode;
	private User user;
	private String deliverCode;
	private String deliverCompany;
	private String deliverPhone;
	private List<OrderItem> items;
	private List<Coupon> coupons;
	private float tatalPrice;
	private OrderStatus status;
	public Order() {
		// TODO Auto-generated constructor stub
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerCompany() {
		return customerCompany;
	}

	public void setCustomerCompany(String customerCompany) {
		this.customerCompany = customerCompany;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerTelephone() {
		return customerTelephone;
	}

	public void setCustomerTelephone(String customerTelephone) {
		this.customerTelephone = customerTelephone;
	}

	public String getCustomerContry() {
		return customerContry;
	}

	public void setCustomerContry(String customerContry) {
		this.customerContry = customerContry;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerZipcode() {
		return customerZipcode;
	}

	public void setCustomerZipcode(String customerZipcode) {
		this.customerZipcode = customerZipcode;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDeliverCode() {
		return deliverCode;
	}

	public void setDeliverCode(String deliverCode) {
		this.deliverCode = deliverCode;
	}

	public String getDeliverCompany() {
		return deliverCompany;
	}

	public void setDeliverCompany(String deliverCompany) {
		this.deliverCompany = deliverCompany;
	}

	public String getDeliverPhone() {
		return deliverPhone;
	}

	public void setDeliverPhone(String deliverPhone) {
		this.deliverPhone = deliverPhone;
	}

	public void setItems(List<OrderItem> items) {
		this.items = items;
	}

	public List<OrderItem> getItems() {
		return items;
	}

	public void setCoupons(List<Coupon> coupons) {
		this.coupons = coupons;
	}

	public List<Coupon> getCoupons() {
		return coupons;
	}

	public void setTatalPrice(float tatalPrice) {
		this.tatalPrice = tatalPrice;
	}

	public float getTatalPrice() {
		return tatalPrice;
	}

	public void setStatus(OrderStatus status) {
		this.status = status;
	}

	public OrderStatus getStatus() {
		return status;
	}
	
}
