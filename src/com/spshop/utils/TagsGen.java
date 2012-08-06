package com.spshop.utils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

public class TagsGen {

	private static Logger logger = Logger.getLogger(TagsGen.class);
	private static String INDEX_DIR = "index.dir";

	private  Properties properties;

	private void init() {
		try {
			properties.load(TagsGen.class
					.getResourceAsStream("/tagIndex.properties"));
			properties.clear();
			//properties.store(TagsGen.class.get, "");
		} catch (IOException e) {
			logger.fatal(e);
		}
	}
	
	public void launch(){
		init() ;
		String[] tags = new String[] {
				"abc,abc,asda,fghfg,qwew,gdgd,rwer,dfggd,fdgdf,fgh,wer,poi,jyjy",
				"jtytj,tryrt,wrw,uiyi,erwe,sd,fh,ddf,sdfsd,sdfsdf,sdf,ghhf,hfg,h,sdfsd,rtyrwerqw" };
		Set<String> tagList = new HashSet<String>();
		for (String tag : tags) {
			if (StringUtils.isNotBlank(tag)) {
				String[] subTags = tag.split(",");
				for (String stag : subTags) {
					if (StringUtils.isNotBlank(stag)) {
						stag = stag.trim();
						tagList.add(stag);
					}
				}
			}
		}
		
		List<String> sortedTags = new ArrayList<String>(tagList);
		
		Collections.sort(sortedTags, new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				return o1.compareTo(o2);
			}
		});
		
		for (String key : sortedTags) {
			
		}
	}

	public static void main(String[] args) {
		new TagsGen().launch();
	}
}
