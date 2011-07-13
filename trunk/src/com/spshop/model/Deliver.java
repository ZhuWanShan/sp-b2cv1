package com.spshop.model;

public class Deliver extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -817593465733096672L;
	
	private String company;
	private Image icon;
	private float price;
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public Image getIcon() {
		return icon;
	}
	public void setIcon(Image icon) {
		this.icon = icon;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	

}
