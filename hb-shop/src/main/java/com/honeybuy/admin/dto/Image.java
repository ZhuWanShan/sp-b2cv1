/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.honeybuy.admin.dto;

import java.util.Date;

import org.codehaus.jackson.annotate.JsonAutoDetect;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
@JsonAutoDetect
public class Image {
	private String id;
	private String name;
	private String path;
	private Date createDate;
	private Date updateDate;
}
