package com.spshop.cache;

import java.util.List;

import com.spshop.model.Category;
import com.spshop.model.HTML;
import com.spshop.model.Product;
import com.spshop.model.Site;
import com.spshop.model.TabProduct;
import com.spshop.model.TabSelling;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.service.intf.HTMLService;
import com.spshop.service.intf.SiteService;
import com.spshop.service.intf.TabProductService;
import com.spshop.service.intf.TabSellingService;
import com.spshop.utils.AllConstants;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import static com.spshop.utils.AllConstants.CATEGORY_CACHE;
@SuppressWarnings("unchecked")
public class SCacheManager {
	private static CacheManager cacheManager;
	public static final String GLOBAL_CACHE = "global";
	public static final String PRODUCT_CACHE = "product";
	static{
		cacheManager = new CacheManager(SCacheManager.class.getResourceAsStream("/ehcache.xml"));
	}
	
	public static Cache getGlobalCache(){
		return cacheManager.getCache(GLOBAL_CACHE);
	}
	
	public static Cache getProductCache(){
		return cacheManager.getCache(PRODUCT_CACHE);
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
	
	public static TabProduct getTopSelling(long id ,boolean faceUpdate){
		TabProductService ss = ServiceFactory.getService(TabProductService.class);
		TabProduct tabProduct = null;
		
		if(!faceUpdate&&null!=getGlobalCache().get(TabProduct.class.getName()+id)){
			tabProduct = (TabProduct) getGlobalCache().get(TabProduct.class.getName()+id).getValue();
		}else{
			if(id>0){
				tabProduct = ss.getTopSelling(id);
			}else{
				tabProduct = ss.getTopSelling();
			}
			
			if(null!=tabProduct.getProducts()){
				for(Product product : tabProduct.getProducts()){
					getProductCache().put(new Element(product.getName(), product));
				}
			}
			
			getGlobalCache().put(new Element(TabProduct.class.getName()+id, tabProduct));
		}
		
		return tabProduct;
	}
	
	public static HTML getHTML(long id,boolean faceUpdate){
		HTMLService ss = ServiceFactory.getService(HTMLService.class);
		HTML html = null;
		
		if(!faceUpdate&&null!=getGlobalCache().get(HTML.class.getName()+id)){
			html = (HTML) getGlobalCache().get(HTML.class.getName()+id).getValue();
		}else{
			html = ss.getHTML(id);
			getGlobalCache().put(new Element(HTML.class.getName()+id, html));
		}
		
		return html;
	}
	
	public static TabSelling getTabSelling(boolean faceUpdate){
		TabSellingService ss = ServiceFactory.getService(TabSellingService.class);
		TabSelling tabSelling = null;
		
		if(!faceUpdate&&null!=getGlobalCache().get(AllConstants.DEFAULT_TABSELLING_CACHE)){
			tabSelling = (TabSelling) getGlobalCache().get(AllConstants.DEFAULT_TABSELLING_CACHE).getValue();
		}else{
			tabSelling = ss.getDefaulTabSelling();
			getGlobalCache().put(new Element(AllConstants.DEFAULT_TABSELLING_CACHE, tabSelling));
		}
		
		return tabSelling;
	}
	
	
}
