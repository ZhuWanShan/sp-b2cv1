package com.spshop.model;

public class Site extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8581772837790501820L;
	
	private Image logo;
	private String prefix;
	private String suffix;
	private String domain;
	private String imagePath;
	private String imageMagicCommand;
	
	public Site() {
	}

	public Image getLogo() {
		return logo;
	}

	public void setLogo(Image logo) {
		this.logo = logo;
	}

	public String getPrefix() {
		return prefix;
	}

	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public void setImageMagicCommand(String imageMagicCommand) {
		this.imageMagicCommand = imageMagicCommand;
	}

	public String getImageMagicCommand() {
		return imageMagicCommand;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getDomain() {
		return domain;
	}

}
