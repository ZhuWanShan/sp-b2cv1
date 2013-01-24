/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.hb.core.data.accessor;

import org.junit.Assert;
import org.junit.Test;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class DataAccessorFactoryTest {
	@Test
	public void testGet_Normal_Case(){
		SettingDataAccessor accessor = DataAccessorFactory.get(SettingDataAccessor.class);
		Assert.assertNotNull(accessor);
	}
}
