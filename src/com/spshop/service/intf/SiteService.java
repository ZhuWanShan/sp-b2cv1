package com.spshop.service.intf;

import com.spshop.dao.intf.SiteDAO;
import com.spshop.model.Component;
import com.spshop.model.QueryCriteria;
import com.spshop.model.QueryResult;
import com.spshop.model.Site;

public interface SiteService extends BaseService<Site,SiteDAO, Long>{

	Site getSiteById(long defaultSiteId);
	QueryResult<Component> query(QueryCriteria criteria);
}
