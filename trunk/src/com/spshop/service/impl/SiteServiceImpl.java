package com.spshop.service.impl;

import com.spshop.dao.intf.SiteDAO;
import com.spshop.model.Component;
import com.spshop.model.QueryCriteria;
import com.spshop.model.QueryResult;
import com.spshop.model.Site;
import com.spshop.service.AbstractService;
import com.spshop.service.intf.SiteService;

public class SiteServiceImpl extends AbstractService<Site,SiteDAO, Long> implements SiteService{

	@Override
	public Site getSiteById(long defaultSiteId) {
		Site site = fetchById(defaultSiteId);
		return site.clone();
	}

	@Override
	public QueryResult<Component> query(QueryCriteria criteria) {
		QueryResult<Component> qs = getDao().queryByHQL(criteria);
		return qs.clone();
	}
}
