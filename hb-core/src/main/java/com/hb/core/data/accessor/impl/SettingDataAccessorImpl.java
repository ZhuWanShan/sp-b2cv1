/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.hb.core.data.accessor.impl;

import java.io.Serializable;

import org.springframework.stereotype.Component;

import com.hb.core.data.accessor.SettingDataAccessor;
import com.hb.core.model.Setting;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
@Component
public class SettingDataAccessorImpl implements SettingDataAccessor{

	public Setting retrieveById(Serializable id) {
		return null;
	}

}
