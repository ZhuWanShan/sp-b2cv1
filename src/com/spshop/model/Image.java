package com.spshop.model;

public class Image extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1698610860522003320L;
	
	private String altTtile;
	private String noChangeUrl;

	private String logoUrl;
	private String iconUrl;
	private String largerUrl;
	private String thumbnailUrl;
	private String smallUrl;
	private String strType;
	private String strSizeType;
	
	public String getNoChangeUrl() {
		return noChangeUrl;
	}
	
	public String getLargerUrl() {
		return largerUrl;
	}
	public void setLargerUrl(String largerUrl) {
		this.largerUrl = largerUrl;
	}
	public void setNoChangeUrl(String noChangeUrl) {
		this.noChangeUrl = noChangeUrl;
	}
	public String getLogoUrl() {
		return logoUrl;
	}
	public void setLogoUrl(String logoUrl) {
		this.logoUrl = logoUrl;
	}
	public String getThumbnailUrl() {
		return thumbnailUrl;
	}
	public void setThumbnailUrl(String thumbnailUrl) {
		this.thumbnailUrl = thumbnailUrl;
	}
	public String getSmallUrl() {
		return smallUrl;
	}
	public void setSmallUrl(String smallUrl) {
		this.smallUrl = smallUrl;
	}
	public String getStrType() {
		return strType;
	}
	public void setStrType(String strType) {
		this.strType = strType;
	}
	public String getStrSizeType() {
		return strSizeType;
	}
	public void setStrSizeType(String strSizeType) {
		this.strSizeType = strSizeType;
	}
	
	public ImageType getType() {
		if(null==strType){
			return null;
		}
		return ImageType.valueOf(strType.toUpperCase());
	}
	public void setType(ImageType type) {
		this.strType = type.getValue();
	}
	public void setSizeType(ImageSizeType sizeType) {
		this.strSizeType = sizeType.getValue();
	}
	public ImageSizeType getSizeType() {
		if(null==strSizeType){
			return null;
		}
		return ImageSizeType.valueOf(strSizeType.toUpperCase());
	}

	public void setIconUrl(String iconUrl) {
		this.iconUrl = iconUrl;
	}

	public String getIconUrl() {
		return iconUrl;
	}

	public void setAltTtile(String altTtile) {
		this.altTtile = altTtile;
	}

	public String getAltTtile() {
		return altTtile;
	}

}
