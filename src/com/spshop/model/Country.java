package com.spshop.model;

public class Country extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 168229983824448541L;
	
	private String code;
	private String abbrCode;
	private Image icon;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getAbbrCode() {
		return abbrCode;
	}
	public void setAbbrCode(String abbrCode) {
		this.abbrCode = abbrCode;
	}
	public Image getIcon() {
		return icon;
	}
	public void setIcon(Image icon) {
		this.icon = icon;
	}
}
