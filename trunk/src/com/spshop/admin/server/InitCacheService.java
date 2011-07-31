package com.spshop.admin.server;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		CacheMap.getInstance().clearCache();
		CategoryService categories = ServiceFactory.getService(CategoryService.class);
		CacheMap.getInstance().addCache(AllConstants.CATEGORY_CACHE, categories.getTopCategories());
		PrintWriter out = response.getWriter();
		out.println("Cache size is: "+CacheMap.getInstance().getCacheSize());
	}
}
