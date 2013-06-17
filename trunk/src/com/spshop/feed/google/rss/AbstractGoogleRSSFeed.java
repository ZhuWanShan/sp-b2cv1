package com.spshop.feed.google.rss;

import java.io.IOException;
import java.util.Properties;

import org.apache.log4j.Logger;

import com.spshop.web.FeedController;

public abstract class AbstractGoogleRSSFeed {
	private static Logger logger = Logger.getLogger(FeedController.class);
	private final static Properties feedConfig = new Properties();
	static {
		try {
			feedConfig.load(FeedController.class
					.getResourceAsStream("/rssFeedConfig.properties"));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		}
	}

	public static class GoogleCategoryMapper {
		public static String mapping(String category) {
			return feedConfig.getProperty(category);
		}
	}
	
	public static String getProperty(String key){
		return feedConfig.getProperty(key);
	}
}
