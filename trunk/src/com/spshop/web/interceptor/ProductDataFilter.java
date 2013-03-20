/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.spshop.web.interceptor;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.CollectionUtils;
import org.apache.log4j.Logger;

import com.spshop.cache.SCacheFacade;
import com.spshop.model.Product;
import com.spshop.model.TabProduct;
import com.spshop.utils.Constants;
import com.spshop.utils.Utils;
import com.spshop.web.view.PageView;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class ProductDataFilter extends AbstractCategoryDataFilter{
	
	private static final Logger logger = Logger.getLogger(ProductDataFilter.class);

	@Override
	public void doFilter(ServletRequest req, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
			PageView pageView = new PageView();
	        HttpServletRequest request = (HttpServletRequest) req;
	        
	        String requestURI = request.getRequestURI();
	        
	        logger.debug("requestURI: " + requestURI);
	        
	        String name = requestURI.substring(requestURI.lastIndexOf('/'));
	        
	        if (pageView.getCategory() == null) {
	            Product product = SCacheFacade.getProduct(name.replace("/", ""));
	            if (product != null && CollectionUtils.isNotEmpty(product.getCategories())) {
	                pageView.setCategory(product.getCategories().get(product.getCategories().size()-1));
	            }
	        }
	        
	        populateBreadcrumbForPage(pageView.getCategory(), pageView.getBreadcrumb());
	        
	        request.setAttribute(Constants.PAGE_VIEW, pageView);
	        
	        chain.doFilter(request, response);
		
	}
	
}
