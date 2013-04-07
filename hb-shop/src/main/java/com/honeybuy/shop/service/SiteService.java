/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.honeybuy.shop.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.honeybuy.shop.dto.SiteDTO;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
@Service
public class SiteService implements ISiteService{

	@Override
	public SiteDTO getSite() {
		System.out.println("Getting site info.......................");
		SiteDTO siteDTO = new SiteDTO();
		
		siteDTO.setOwnerId("None");
		siteDTO.setResourceServer("http://localhost/resources2");
		siteDTO.setSiteId("0");
		siteDTO.setWebResourcesFolder("");
		siteDTO.setProductImageResourcesFolder("/image");
		
		List<String> css = new ArrayList<String>();
		css.add("/css/blitzer/jquery-ui-1.10.0.custom.css");
		css.add("/css/blitzer/common.css");
		
		List<String> js = new ArrayList<String>();
		
		siteDTO.setCss(css);
		siteDTO.setJs(js);
		
		
		return siteDTO;
	}

}
