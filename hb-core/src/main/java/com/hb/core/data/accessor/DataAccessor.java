/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.hb.core.data.accessor;

import java.io.Serializable;

import com.hb.core.model.AbstractComponent;


/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public interface DataAccessor<T extends AbstractComponent> {
	T retrieveById(Serializable id);
}
