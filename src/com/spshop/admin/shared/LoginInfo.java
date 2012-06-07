package com.spshop.admin.shared;

import java.io.Serializable;
import java.util.Map;

import com.spshop.model.Country;
import com.spshop.model.Site;

public class LoginInfo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3625917903138127254L;
	
	private Site site;
	private String userID;
	private Map<String, Country> countryMap;
	public void setSite(Site site) {
		this.site = site;
	}
	public Site getSite() {
		return site;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserID() {
		return userID;
	}
    public void setCountryMap(Map<String, Country> countryMap) {
        this.countryMap = countryMap;
    }
    public Map<String, Country> getCountryMap() {
        return countryMap;
    }

}
