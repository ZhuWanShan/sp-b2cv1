package com.spshop.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;

import org.apache.log4j.Logger;

import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.TagsService;

public class TagsServiceImpl implements TagsService {
	
	private static Logger logger = Logger.getLogger(TagsServiceImpl.class);
	
	private static String[] INDEX_KEYS = new String[]{"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","1"};
	
	private String indexFile;
	private Map<String,String[]> tagIndexs;
	private SortedMap<String, List<String>> indexs = new TreeMap<String, List<String>>();

	public TagsServiceImpl() {
	}
	
	public void init(){
		if(null == tagIndexs){
			Properties properties = new Properties();
			tagIndexs = new TreeMap<String, String[]>();
			try {
				properties.load(new FileInputStream(new File(indexFile)));
			} catch (Exception e) {
				logger.error("cannot read confile file: " + indexFile,e);
			}
			for(String key : INDEX_KEYS){
				tagIndexs.put(key, properties.getProperty(key).split(","));
				String[] keys = tagIndexs.get(key);
				List<String> keyList = new ArrayList<String>();
				for(int i = 0; i < INDEX_SIZE_PER_KEY && i < keys.length - 2 && null != keys; i++){
					keyList.add(keys[i]);
				}
				indexs.put(key, keyList);
			}
		}
	}

	@Override
	public List<String> getTags(int page, int size) {
		return null;
	}

	@Override
	public SortedMap<String, List<String>> getTagIndexs() {
		return indexs;
	}

	public String getIndexFile() {
		return indexFile;
	}

	public void setIndexFile(String indexFile) {
		this.indexFile = indexFile;
	}
	
	public static void main(String[] args) {
		TagsService service = ServiceFactory.getService(TagsService.class);
		service.getTagIndexs().get("A");
	}

}
