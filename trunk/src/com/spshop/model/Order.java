package com.spshop.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Order extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8785205423133606769L;
	private String customerName;
	private String customerCompany;
	private String customerAddress;
	private String customerAddress2;
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
	
	private String bCustomerName;
	private String customGender;
	private String bCustomGender;
	private String bCustomerAddress;
	private String bCustomerAddress2;
	private String bCity;
	private String bCustomerZipcode;
	private String bPhone;
	
	public Order() {
		if(null!=getName()){
			setName(getOrderId());
		}
	}
	
	public Order(Order order) {
		super(order);
		if(null==getName()){
			setName(getOrderId());
		}
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
	
	public String getCfirstName(){
		if(null!=customerName&&customerName.split(",").length>1){
			return customerName.split(",")[0];
		}
		return "";
	}
	
	public String getClastName(){
		if(null!=customerName&&customerName.split(",").length>1){
			return customerName.split(",")[1];
		}
		return "";

	}
	
	public String getBfirstName(){
		if(null!=bCustomerName&&bCustomerName.split(",").length>1){
			return bCustomerName.split(",")[0];
		}
		return "";
	}
	
	public String getBlastName(){
		if(null!=bCustomerName&&bCustomerName.split(",").length>1){
			return bCustomerName.split(",")[1];
		}
		return "";

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
		
		if (this.customerAddress2 != null) {
			/* Does not have a clone() method */
			obj.customerAddress2 = this.customerAddress2;
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
		
		
		if (this.bCustomerName != null) {
			obj.bCustomerName = this.bCustomerName;
		}
		
		if (this.customGender != null) {
			obj.customGender = this.customGender;
		}
		
		if (this.bCustomGender != null) {
			obj.bCustomGender = this.bCustomGender;
		}
		
		if (this.bCustomerAddress2 != null) {
			obj.bCustomerAddress2 = this.bCustomerAddress2;
		}
		
		if (this.bCustomerAddress != null) {
			obj.bCustomerAddress = this.bCustomerAddress;
		}
		
		if (this.bCity != null) {
			obj.bCity = this.bCity;
		}
		
		if (this.bCustomerZipcode != null) {
			obj.bCustomerZipcode = this.bCustomerZipcode;
		}
		
		if (this.bPhone != null) {
			obj.bPhone = this.bPhone;
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

	public void setCustomerAddress2(String customerAddress2) {
		this.customerAddress2 = customerAddress2;
	}

	public String getCustomerAddress2() {
		return customerAddress2;
	}

	public void setBcustomerName(String bCustomerName) {
		this.bCustomerName = bCustomerName;
	}

	public String getBcustomerName() {
		return bCustomerName;
	}

	public void setCustomGender(String customGender) {
		this.customGender = customGender;
	}

	public String getCustomGender() {
		return customGender;
	}

	public void setBcustomGender(String bCustomGender) {
		this.bCustomGender = bCustomGender;
	}

	public String getBcustomGender() {
		return bCustomGender;
	}

	public void setBcustomerAddress(String bCustomerAddress) {
		this.bCustomerAddress = bCustomerAddress;
	}

	public String getBcustomerAddress() {
		return bCustomerAddress;
	}

	public void setBcustomerAddress2(String bCustomerAddress2) {
		this.bCustomerAddress2 = bCustomerAddress2;
	}

	public String getBcustomerAddress2() {
		return bCustomerAddress2;
	}

	public void setBcity(String bCity) {
		this.bCity = bCity;
	}

	public String getBcity() {
		return bCity;
	}

	public void setBcustomerZipcode(String bCustomerZipcode) {
		this.bCustomerZipcode = bCustomerZipcode;
	}

	public String getBcustomerZipcode() {
		return bCustomerZipcode;
	}

	public void setBphone(String bPhone) {
		this.bPhone = bPhone;
	}

	public String getBphone() {
		return bPhone;
	}
	
	protected String getOrderId(){
		String id = "Order";
		id = id + new Random().nextInt(999999);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + new Random().nextInt(999999);
		
		return id;
	}
	
}
