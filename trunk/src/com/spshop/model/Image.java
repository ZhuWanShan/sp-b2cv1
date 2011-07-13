package com.spshop.model;

public class Image extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1698610860522003320L;
	
	private String altTile;
	private String path;
	private String url;
	private ImageType type;
	private ImageSizeType sizeType;
	public String getAltTile() {
		return altTile;
	}
	public void setAltTile(String altTile) {
		this.altTile = altTile;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public ImageType getType() {
		return type;
	}
	public void setType(ImageType type) {
		this.type = type;
	}
	public void setSizeType(ImageSizeType sizeType) {
		this.sizeType = sizeType;
	}
	public ImageSizeType getSizeType() {
		return sizeType;
	}

}
