package com.spshop.model;

import java.util.List;

public class Product extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -84296171648012884L;
	private String keywords;
	private int hit;
	private int priority;
	private int rate;
	private int commentsTotal;
	private String abstractText;
	private String detail;
	private int weight;
	private String title;
	private String rateCount;
	private CutOff cutOff;
	private List<ProductOption> options;
	private List<ProductProperty> properties;
	private List<Image> images;
	
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getCommentsTotal() {
		return commentsTotal;
	}
	public void setCommentsTotal(int commentsTotal) {
		this.commentsTotal = commentsTotal;
	}
	public String getAbstractText() {
		return abstractText;
	}
	public void setAbstractText(String abstractText) {
		this.abstractText = abstractText;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public CutOff getCutOff() {
		return cutOff;
	}
	public void setCutOff(CutOff cutOff) {
		this.cutOff = cutOff;
	}
	public List<ProductOption> getOptions() {
		return options;
	}
	public void setOptions(List<ProductOption> options) {
		this.options = options;
	}
	public List<ProductProperty> getProperties() {
		return properties;
	}
	public void setProperties(List<ProductProperty> properties) {
		this.properties = properties;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitle() {
		return title;
	}
	public void setRateCount(String rateCount) {
		this.rateCount = rateCount;
	}
	public String getRateCount() {
		return rateCount;
	}
	public void setImages(List<Image> images) {
		this.images = images;
	}
	public List<Image> getImages() {
		return images;
	}
	
}
