/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.honeybuy.shop.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.filter.GenericFilterBean;

import com.honeybuy.shop.dto.SiteDTO;
import com.honeybuy.shop.service.ISiteService;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class BootstrapFilter extends GenericFilterBean{
	
	private SiteDTO site = null;
	
	@Autowired
	private ISiteService siteService;
	
	
	public static final String SITE_ATTR = "site";
	
	@Override
	protected void initFilterBean() throws ServletException {
		super.initFilterBean();
		site = siteService.getSite();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		request.setAttribute(SITE_ATTR, site);
		chain.doFilter(request, response);
	}

	public ISiteService getSiteService() {
		return siteService;
	}

	public void setSiteService(ISiteService siteService) {
		this.siteService = siteService;
	}

}
