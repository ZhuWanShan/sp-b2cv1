package com.spshop.admin.server;

import static com.spshop.utils.AllConstants.CATEGORY_CACHE;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.ehcache.Element;

import com.spshop.cache.SCacheManager;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;

public class InitCacheService extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7424034770029029671L;
	
	public void init() throws ServletException {
		SCacheManager.getTopCategories();
		SCacheManager.getSite();
		SCacheManager.getTabSelling(true);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		CategoryService cs = ServiceFactory.getService(CategoryService.class);
		SCacheManager.getGlobalCache().put(new Element(CATEGORY_CACHE, cs.getTopCategories()));
		SCacheManager.getSite(true);
		SCacheManager.getTabSelling(true);
	}
}
