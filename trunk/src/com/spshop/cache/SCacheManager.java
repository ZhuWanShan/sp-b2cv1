package com.spshop.cache;

import java.util.List;

import com.spshop.model.Category;
import com.spshop.model.Site;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.service.intf.SiteService;
import com.spshop.utils.AllConstants;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import static com.spshop.utils.AllConstants.CATEGORY_CACHE;
@SuppressWarnings("unchecked")
public class SCacheManager {
	private static CacheManager cacheManager;
	public static final String GLOBAL_CACHE = "global";
	static{
		cacheManager = new CacheManager(SCacheManager.class.getResourceAsStream("/ehache.xml"));
	}
	
	public static Cache getGlobalCache(){
		return cacheManager.getCache(GLOBAL_CACHE);
	}
	
	public static List<Category> getTopCategories(){
		CategoryService cs = ServiceFactory.getService(CategoryService.class);
		List<Category> categories = null;
		if(null!=getGlobalCache().get(CATEGORY_CACHE)){
			categories = (List<Category>) getGlobalCache().get(CATEGORY_CACHE).getValue();
		}else{
			categories = cs.getTopCategories();
			getGlobalCache().put(new Element(CATEGORY_CACHE, categories));
		}
		return categories;
	}
	
	public static Site getSite(){
		return getSite(false);
	}
	
	public static Site getSite(boolean faceUpdate){
		SiteService ss = ServiceFactory.getService(SiteService.class);
		Site site = null;
		
		if(!faceUpdate&&null!=getGlobalCache().get(AllConstants.DEFAULT_SITE_CACHE)){
			site = (Site) getGlobalCache().get(AllConstants.DEFAULT_SITE_CACHE).getValue();
		}else{
			site = ss.getSiteById(AllConstants.DEFAULT_SITE_ID);
			getGlobalCache().put(new Element(AllConstants.DEFAULT_SITE_CACHE, site));
		}
		
		return site;
	}
	
	
}
