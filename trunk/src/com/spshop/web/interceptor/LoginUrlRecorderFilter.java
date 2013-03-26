/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.spshop.web.interceptor;

import static com.spshop.utils.Constants.LOGIN_LANDING_PAGE_PARAM;
import static com.spshop.utils.Constants.LOGIN_PAGE;
import static com.spshop.utils.Constants.REG_PAGE;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

import com.spshop.utils.Constants;
import com.spshop.web.view.UserView;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class LoginUrlRecorderFilter extends AbstractCategoryDataFilter{
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest) req;
		
		UserView userView = (UserView) request.getSession().getAttribute(Constants.USER_VIEW);
		
		String landingPage = request.getParameter(LOGIN_LANDING_PAGE_PARAM);
		if(StringUtils.isBlank(landingPage)){
			String url = request.getRequestURL().toString();
			if(url.endsWith(LOGIN_PAGE)||url.endsWith(REG_PAGE)){
				url = null;
			}
			String queryString = request.getQueryString();
			if(null != queryString && null != url){
				url = url + "?" + queryString;
				
			}
			if(null!=url){
				userView.setRequestPage(URLEncoder.encode(url,"UTF-8"));
			}
		}else{
			userView.setRequestPage(landingPage);
		}
		
	}
	
}
