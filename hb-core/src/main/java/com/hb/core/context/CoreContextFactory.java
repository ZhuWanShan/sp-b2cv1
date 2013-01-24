/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.hb.core.context;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;



/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class CoreContextFactory{
	
	private final static Logger logger = LoggerFactory.getLogger(CoreContextFactory.class);
	private final static String CONTEXT_FILE_LOCATION = "/hb-core-context.xml";
	
	private static ApplicationContext context = null;
	public static ApplicationContext getContext(){
		if(null == context){
			logger.debug("create new application context");
			context = new ClassPathXmlApplicationContext(CONTEXT_FILE_LOCATION);
		}else{
			return context;
		}
		return context;
	}
}
