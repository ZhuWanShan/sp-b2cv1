package com.spshop.utils;

import java.io.IOException;
import java.util.Properties;

import org.apache.log4j.Logger;


public class SettingUtil {
	 private static Logger logger = Logger.getLogger(SettingUtil.class);
	 
	 
	private static final Properties settings = new Properties();
	
	static {
        try {
        	settings.load(SettingUtil.class.getResourceAsStream("/Setting.properties"));
        } catch (IOException e) {
        	logger.error(e.getMessage(), e);
        }
    }
	public static String getStringValue(String key){
		return settings.getProperty(key);
	}
}
