/**
 * Created on 2007-8-29 上午10:23:56
 * Title: UserMap.java <br/>
 * Description: <br/>
 * Copyright: Copyright (c) 2007 <br/>
 * @author Zongming.Zhong
 * @version Revision: 1.0 
 */
package com.spshop.cache;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @author Zongming.Zhong
 * 
 */
public class CacheMap {

	private static Log log = LogFactory.getLog(CacheMap.class);

	private static CacheMap userMap;

	private Map<String, Object> map;

	private ReentrantLock lock;

	private CacheMap() {
		map = new HashMap<String, Object>();
		lock = new ReentrantLock();
	}

	public static CacheMap getInstance() {
		if (userMap == null) {
			userMap = new CacheMap();
		}
		return userMap;
	}

	public void addCache(String sessionId, Object obj) {
		if (obj != null && !StringUtils.isEmpty(sessionId)) {
			try {
				lock.lock();
				map.put(sessionId, obj);
			} finally {
				lock.unlock();
			}
		}
	}
	
	public void loadAllCache(String sessionId, Object obj) {
		if (obj != null && !StringUtils.isEmpty(sessionId)) {
			try {
				lock.lock();
				map.put(sessionId, obj);
			} finally {
				lock.unlock();
			}
		}
	}

	public void removeCache(String sessionId) {
		if (!StringUtils.isEmpty(sessionId)) {
			try {
				lock.lock();
				map.remove(sessionId);
			} finally {
				lock.unlock();
			}
		}
	}

	public Object getCache(String sessionId) {
		if (!StringUtils.isEmpty(sessionId)) {
			Object obj = null;
			try {
				lock.lock();
				obj = map.get(sessionId);
			} finally {
				lock.unlock();
			}
			return obj;
		}
		return null;
	}

	/**
	 * 用户是否存在
	 * 
	 * @param id
	 *            用户ID
	 * @return 存在返回true
	 */
	public boolean hasCache(String id) {
		boolean ret = false;
		if (!StringUtils.isEmpty(id)) {
			try {
				lock.lock();
				Iterator iterator = map.entrySet().iterator();
				while (iterator.hasNext()) {
					Map.Entry entry = (Map.Entry) iterator.next();
					Object obj = entry.getValue();
					if (obj.equals(id)) {
						ret = true;
						break;
					}
				}
			} finally {
				lock.unlock();
			}
		}
		return ret;
	}

	/**
	 * 用户超时清理（用户登录后，未操作的时间间隔超过系统设定的最大时间）
	 */
	public void clearCache() {
		try {
			lock.lock();
			log.info("Start to clear cache:");
			// 遍历map清除失效数据
			Iterator iterator = map.entrySet().iterator();
			while (iterator.hasNext()) {
				Map.Entry entry = (Map.Entry) iterator.next();
				Object obj = entry.getValue();
				log.info(entry.getKey() + ":(" + obj.getClass() + ")cache node cleared");
					iterator.remove();
					obj = null;
			}
		} finally {
			log.info("cleared all cache nodes:");
			lock.unlock();
		}
	}
}
