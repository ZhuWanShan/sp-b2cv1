package com.spshop.model;

import java.io.Serializable;
import java.util.Date;

public  class Component implements Serializable,Cloneable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3766816128763115672L;
	private long id;
	private Site site;
	private String name;
	private Date createDate;
	private Date updateDate;
	
	public Component() {
	}
	
	public Component(Component component) {
		setId(component.getId());
		if(null!=component.getSite()){
			setSite(component.getSite().clone());
		}
		setName(component.getName());
		setCreateDate(component.getCreateDate());
		setUpdateDate(component.getUpdateDate());
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public void setSite(Site site) {
		this.site = site;
	}

	public Site getSite() {
		return site;
	}
	
	
}
