/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.hb.core.context;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.context.ApplicationContext;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class SpringApplicationContextFactoryTest {
	
	@Test
	public void testGetContext_Normal_Case(){
		ApplicationContext context = CoreContextFactory.getContext();
		Assert.assertNotNull(context);
	}
}
