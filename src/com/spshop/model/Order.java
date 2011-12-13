package com.spshop.model;

import java.util.ArrayList;
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
	private String customerCountry;
	private String customerEmail;
	private String customerZipcode;
	private User user;
	private String deliverCode;
	private String deliverCompany;
	private String deliverPhone;
	private List<OrderItem> items;
	//private List<Coupon> coupons;
	private String orderType;
	private float totalPrice;
	private String status;
	private String addressType;
	private String city;
	private float dePrice;
	private String currency;
	private String customerMsg;
	
	public Order() {
	}
	
	public Order(Order order) {
		super(order);
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

	/*public void setCoupons(List<Coupon> coupons) {
		this.coupons = coupons;
	}

	public List<Coupon> getCoupons() {
		return coupons;
	}*/

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus() {
		return status;
	}

	public void setCustomerCountry(String customerCountry) {
		this.customerCountry = customerCountry;
	}

	public String getCustomerCountry() {
		return customerCountry;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public float getTotalPrice() {
		return totalPrice;
	}

	public Order clone() {
		Order obj = null;
		obj = new Order(this);
		if (this.customerName != null) {
			/* Does not have a clone() method */
			obj.customerName = this.customerName;
		}
		if (this.customerCompany != null) {
			/* Does not have a clone() method */
			obj.customerCompany = this.customerCompany;
		}
		if (this.customerAddress != null) {
			/* Does not have a clone() method */
			obj.customerAddress = this.customerAddress;
		}
		if (this.customerTelephone != null) {
			/* Does not have a clone() method */
			obj.customerTelephone = this.customerTelephone;
		}
		if (this.customerCountry != null) {
			/* Does not have a clone() method */
			obj.customerCountry = this.customerCountry;
		}
		if (this.customerEmail != null) {
			/* Does not have a clone() method */
			obj.customerEmail = this.customerEmail;
		}
		if (this.customerZipcode != null) {
			/* Does not have a clone() method */
			obj.customerZipcode = this.customerZipcode;
		}
		if (this.user != null) {
			obj.user = (User) this.user.clone();
		}
		if (this.deliverCode != null) {
			/* Does not have a clone() method */
			obj.deliverCode = this.deliverCode;
		}
		if (this.deliverCompany != null) {
			/* Does not have a clone() method */
			obj.deliverCompany = this.deliverCompany;
		}
		if (this.deliverPhone != null) {
			/* Does not have a clone() method */
			obj.deliverPhone = this.deliverPhone;
		}
		
		if (this.orderType != null) {
			/* Does not have a clone() method */
			obj.orderType = this.orderType;
		}
		
		if (this.addressType != null) {
			/* Does not have a clone() method */
			obj.addressType = this.addressType;
		}
		
		if (this.customerMsg != null) {
			/* Does not have a clone() method */
			obj.customerMsg = this.customerMsg;
		}
		
		obj.dePrice = this.dePrice;
		
		if (this.city != null) {
			/* Does not have a clone() method */
			obj.city = this.city;
		}
		
		if (this.currency != null) {
			/* Does not have a clone() method */
			obj.currency = this.currency;
		}
		
		if (this.items != null) {
			List<OrderItem> items = new ArrayList<OrderItem>();
			
			if(null!=this.items){
				for (OrderItem orderItem : this.items) {
					items.add(orderItem.clone());
				}
			}
			
			obj.items = items;
		}
		obj.totalPrice = this.totalPrice;
		if (this.status != null) {
			obj.status = this.status;
		}
		return obj;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setAddressType(String addressType) {
		this.addressType = addressType;
	}

	public String getAddressType() {
		return addressType;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCity() {
		return city;
	}

	public void setDePrice(float dePrice) {
		this.dePrice = dePrice;
	}

	public float getDePrice() {
		return dePrice;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCustomerMsg(String customerMsg) {
		this.customerMsg = customerMsg;
	}

	public String getCustomerMsg() {
		return customerMsg;
	}
	
	
	
}
