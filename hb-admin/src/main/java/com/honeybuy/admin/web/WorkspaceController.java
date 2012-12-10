/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.honeybuy.admin.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
@Controller
@RequestMapping("/workspace")
public class WorkspaceController {
	@RequestMapping("/test")
	@ResponseBody
	public String test(){
		return "asfasfjkldgjdklfgjdfklgjdfklgjdfklg";
	}
}
