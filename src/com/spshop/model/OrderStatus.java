package com.spshop.model;

public class OrderStatus extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3100319255187191566L;
	
	private String status;
	
	public OrderStatus() {
	}
	
	public OrderStatus(OrderStatus status) {
		super(status);
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatus() {
		return status;
	}

	public OrderStatus clone() {
		OrderStatus obj = null;
		obj = new OrderStatus(this);
		if (this.status != null) {
			/* Does not have a clone() method */
			obj.status = this.status;
		}
		return obj;
	}

}
