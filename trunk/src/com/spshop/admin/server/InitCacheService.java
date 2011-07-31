package com.spshop.admin.server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import com.spshop.cache.CacheMap;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.utils.AllConstants;

public class InitCacheService extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7424034770029029671L;
	
	public void init() throws ServletException {
		CategoryService categories = ServiceFactory.getService(CategoryService.class);
		CacheMap.getInstance().addCache(AllConstants.CATEGORY_CACHE, categories.getTopCategories());
	}
}
