/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.spshop.web.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.web.util.RequestMatcher;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class NoFilterMatcher implements RequestMatcher {

	@Override
	public boolean matches(HttpServletRequest request) {
		
		String uri = request.getRequestURI();
		
		if(uri.matches("[^\\.]+[\\.]\\w+")){
			return false;
		}
		
		return true;
	}
}
