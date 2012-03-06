package com.spshop.web;

import com.spshop.web.view.SiteView;
import com.spshop.web.view.UserView;

public class BaseController {
	private SiteView siteView;
	private ThreadLocal<UserView> userViewLoacal = new ThreadLocal<UserView>();

	public SiteView getSiteView() {
		return siteView;
	}

	public void setSiteView(SiteView siteView) {
		this.siteView = siteView;
	}
	
	public UserView getUserView(){
		return userViewLoacal.get();
	}
	
	public void setUserView(UserView userView){
		userViewLoacal.set(userView);
	}
}
