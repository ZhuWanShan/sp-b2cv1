package com.spshop.model;

import java.io.Serializable;
import java.util.Date;

public class QueryCriteria  implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5039324373818202449L;
	private String key;
	private Date start;
	private Date end;
	private String category;
	private int maxResuilt;
	private int startIndex;
	
	public QueryCriteria() {
	}

	public QueryCriteria(int maxResuilt) {
		super();
		this.maxResuilt = maxResuilt;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getMaxResuilt() {
		return maxResuilt;
	}

	public void setMaxResuilt(int maxResuilt) {
		this.maxResuilt = maxResuilt;
	}

	@Override
	public String toString() {
		return "QueryCriteria [category=" + category + ", end=" + end
				+ ", key=" + key + ", maxResuilt=" + maxResuilt + ", start="
				+ start + "]";
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	
}
