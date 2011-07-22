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
	private String type;
	private int maxResuilt = 30;
	private int startIndex;
	
	@Override
	public String toString() {
		return "QueryCriteria [key=" + key + ", start=" + start + ", end="
				+ end + ", type=" + type + ", maxResuilt=" + maxResuilt
				+ ", startIndex=" + startIndex + "]";
	}

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


	public int getMaxResuilt() {
		return maxResuilt;
	}

	public void setMaxResuilt(int maxResuilt) {
		this.maxResuilt = maxResuilt;
	}


	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}
