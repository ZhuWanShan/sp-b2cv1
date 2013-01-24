/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.hb.core.data.accessor;

import org.springframework.context.ApplicationContext;

import com.hb.core.context.CoreContextFactory;


/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class DataAccessorFactory {
	
	public static<T extends DataAccessor<?>> T get(Class<T> accClass){
		
		ApplicationContext context = CoreContextFactory.getContext();
		
		return context.getBean(accClass);
	}
	
}
