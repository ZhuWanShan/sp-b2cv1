package com.spshop.model;

public class ProductProperty extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2299775829083584745L;
	private String detail;
	private Image image;
	private Product product;
	
	public ProductProperty() {
		// TODO Auto-generated constructor stub
	}
	
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public Image getImage() {
		return image;
	}
	public void setImage(Image image) {
		this.image = image;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Product getProduct() {
		return product;
	}

	/**
	 * @autogenerated by CodeHaggis (http://sourceforge.net/projects/haggis)
	 * clone
	 * @return Object
	 */
	public ProductProperty clone() {
		ProductProperty obj = null;
		obj = new ProductProperty();
		if (this.detail != null) {
			/* Does not have a clone() method */
			obj.detail = this.detail;
		}
		if (this.image != null) {
			obj.image = (Image) this.image.clone();
		}
		if (this.product != null) {
			obj.product = (Product) this.product.clone();
		}
		return obj;
	}
	
	

}
