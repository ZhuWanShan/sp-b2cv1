package com.spshop.web;

import com.spshop.web.view.SiteView;

public class BaseController {
	private SiteView siteView;

	public SiteView getSiteView() {
		return siteView;
	}

	public void setSiteView(SiteView siteView) {
		this.siteView = siteView;
	}
}
