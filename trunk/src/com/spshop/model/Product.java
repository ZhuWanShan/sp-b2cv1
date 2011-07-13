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
	private int rateTotal;
	private int commentsTotal;
	private String abstractText;
	private String detail;
	private int weight;
	private CutOff cutOff;
	private List<ProductOption> options;
	private List<ProductionProperty> properties;
	
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
	public int getRateTotal() {
		return rateTotal;
	}
	public void setRateTotal(int rateTotal) {
		this.rateTotal = rateTotal;
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
	public List<ProductionProperty> getProperties() {
		return properties;
	}
	public void setProperties(List<ProductionProperty> properties) {
		this.properties = properties;
	}
	
}
