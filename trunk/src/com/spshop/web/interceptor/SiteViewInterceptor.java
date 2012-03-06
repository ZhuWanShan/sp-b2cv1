package com.spshop.web.interceptor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spshop.cache.SCacheFacade;
import com.spshop.model.Category;
import com.spshop.model.Site;
import com.spshop.web.BaseController;
import com.spshop.web.view.SiteView;
import com.spshop.web.view.UserView;

public class SiteViewInterceptor extends HandlerInterceptorAdapter{
	
	private Logger logger = Logger.getLogger(SiteViewInterceptor.class);
	protected Map<String, Float> currencies;
	
	public SiteViewInterceptor() {
		Properties cp = new Properties();
		try {
			currencies = new HashMap<String, Float>();
			cp.load(SiteViewInterceptor.class.getResourceAsStream("/currency.properties"));
			for (Object currencyName : cp.keySet()) {
				try {
					float rate = Float.parseFloat(cp.get(currencyName).toString());
					currencies.put(currencyName.toString().trim(), rate);
				} catch (NumberFormatException e) {
					logger.error(e.getMessage(), e);
				}
			}
		}catch(Exception e){
			logger.error(e.getMessage(), e);
			throw new RuntimeException(e);
		}
			
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		SiteView siteView = initSiteView();
		UserView userView = new UserView();
		//TODO retrieve userView
		
		if(handler instanceof BaseController){
			BaseController controller = (BaseController) handler;
			
			//Site View
			controller.setSiteView(siteView);
			//User View
			controller.setUserView(userView);
		}
		
		return true;
	}
	
	private SiteView initSiteView() {
		SiteView siteView = new SiteView();
		Site site = SCacheFacade.getSite();
		List<Category> categories = SCacheFacade.getTopCategories();
		
		
		siteView.setSite(site);
		siteView.setCurrencies(this.currencies);
		siteView.setCategories(categories);
		
		
		return siteView;
	}


	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		super.afterCompletion(request, response, handler, ex);
	}
	
}
