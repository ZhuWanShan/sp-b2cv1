package com.spshop.service.impl;

import com.spshop.dao.intf.SiteDAO;

import com.spshop.model.Site;

import com.spshop.service.AbstractService;

import com.spshop.service.intf.SiteService;

public class SiteServiceImpl extends AbstractService<Site,SiteDAO, Long> implements SiteService{

	@Override
	public Site getSiteById(long defaultSiteId) {
		Site site = fetchById(defaultSiteId);
		return site.clone();
	}
}
