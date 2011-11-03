package com.spshop.model.enums;

public enum OrderStatus{
		ONSHOPPING("ONSHOPPING","On Shoppingcart"),
		PENDING("PENDING","Pending"),
		ORDERING("ORDERING","Ordering"),
		CHECKED("CHECKED","Checked"),
		PAYED("PAYED","Payed"),
		SHIPPING("SHIPPING","Shipping"),
		COMPLETED("COMPLETED","Completed");
		
		private String value;
		private String title;
		private OrderStatus(String value,String title){
			this.value = value;
			this.title = title;
		}
		
		public String getValue(){
			return value;
		}

		public String getTitle() {
			return title;
		}
}
