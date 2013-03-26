/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.spshop.web.interceptor;

import static com.spshop.utils.Constants.CURRENCY;
import static com.spshop.utils.Constants.CURRENT_PRODUCT_ID;
import static com.spshop.utils.Constants.DEFAULT_CURRENCY;
import static com.spshop.utils.Constants.SHOPPINGCART;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.filter.GenericFilterBean;

import com.spshop.cache.SCacheFacade;
import com.spshop.model.Category;
import com.spshop.model.Country;
import com.spshop.model.Order;
import com.spshop.model.Site;
import com.spshop.model.TabSelling;
import com.spshop.model.User;
import com.spshop.model.cart.ShoppingCart;
import com.spshop.model.enums.OrderStatus;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.service.intf.CountryService;
import com.spshop.service.intf.OrderService;
import com.spshop.utils.Constants;
import com.spshop.utils.Utils;
import com.spshop.web.view.HomeView;
import com.spshop.web.view.SiteView;
import com.spshop.web.view.UserView;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public class BootstrapDataFilter extends GenericFilterBean{
	 private final static String HOME_CATEGORY_NAME = "home";
	
	private Logger logger = Logger.getLogger(BootstrapDataFilter.class);
	protected Map<String, Float> currencies;
	protected Map<String, String> crossSales = new TreeMap<String, String>();
	protected  SiteView siteView;
	
	public BootstrapDataFilter() {
		Properties cp = new Properties();
		Properties crossSale = new Properties();
		try {
			currencies = new HashMap<String, Float>();
			cp.load(BootstrapDataFilter.class.getResourceAsStream("/currency.properties"));
			for (Object currencyName : cp.keySet()) {
				try {
					float rate = Float.parseFloat(cp.get(currencyName).toString());
					currencies.put(currencyName.toString().trim(), rate);
				} catch (NumberFormatException e) {
					logger.error(e.getMessage(), e);
				}
			}
			
			crossSale.load(this.getClass().getResourceAsStream("/crossSales.properties"));
            for (Object crossSaleKey : crossSale.keySet()) {
                String res = new String(crossSale.getProperty(String.valueOf(crossSaleKey)));
                crossSales.put(crossSaleKey.toString(), res);
            }
		}catch(Exception e){
			logger.error(e.getMessage(), e);
			throw new RuntimeException(e);
		}
		
		siteView = initSiteView();
			
	}
	

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) servletRequest;

		UserView userView = new UserView();
		
		//TODO retrieve userView
		User user = Utils.retrieveUser(request);
		ShoppingCart shoppingCart = Utils.retrieveShoppingCart(request, user);
		
		userView.setLoginUser(user);
		userView.setCart(shoppingCart);
		userView.setCurrencyRateMap(currencies);
		
		setCurrency(request,userView,siteView.getCurrencies());
		
		setCurrentProductID(request);
		
		request.getSession().getServletContext().setAttribute(Constants.SITE_VIEW, siteView);
		request.getSession().setAttribute(Constants.USER_VIEW, userView);
		
		request.getSession().setAttribute(SHOPPINGCART, userView.getCart());
		request.getSession().getServletContext().setAttribute(CURRENCY, userView.getCurrencyCode());
		
		
		HomeView homeView = (HomeView) request.getSession().getServletContext().getAttribute(Constants.HOME_VIEW);
		if(null == homeView){
			homeView = new HomeView();
			Category homeCategory = Utils.populateCategoryForCategoryPage(HOME_CATEGORY_NAME);
			homeView.setCategory(homeCategory);
		}
		
        if (homeView.getCategory() == null) {
            Category category = ServiceFactory.getService(CategoryService.class).getCategoryByName(HOME_CATEGORY_NAME);
            homeView.setCategory(category);
        }
        
        TabSelling tabSelling = SCacheFacade.getTabSelling(false);
        homeView.setTabSelling(tabSelling);
        
        request.getSession().getServletContext().setAttribute(Constants.HOME_VIEW, homeView);
        
		chain.doFilter(request, response);
	}


	
	
	
	
	private void setCurrentProductID(HttpServletRequest request) {
		String cpid = request.getParameter(CURRENT_PRODUCT_ID);
		
		if(StringUtils.isNotBlank(cpid)){
			request.getSession().setAttribute(CURRENT_PRODUCT_ID, cpid);
		}
	}

	private void setCurrency(HttpServletRequest request, UserView userView, Map<String, Float> currencies) {
		
		String paramCurrency = request.getParameter(CURRENCY);
		
		String cCode = paramCurrency;
		
		if(null == cCode){
			cCode = (String) request.getSession().getAttribute(CURRENCY);
		}
		 
		if(null == cCode || !currencies.containsKey(cCode)){
			cCode = DEFAULT_CURRENCY;
		}
		userView.setCurrencyCode(cCode);
		
		if((StringUtils.isNotBlank(paramCurrency) && !userView.getCurrencyCode().equals(paramCurrency))){
			
			userView.getCart().getOrder().setCurrency(cCode);
			if(null!=userView.getLoginUser()){
				Order order = ServiceFactory.getService(OrderService.class).saveOrder(userView.getCart().getOrder(), OrderStatus.ONSHOPPING.toString());
				userView.getCart().setOrder(order);
			}
			
		}
		
		
		float rate = 1;
		
		if(!DEFAULT_CURRENCY.equals(cCode)){
			rate = currencies.get(cCode);
		}
		
		userView.setCurrencyRate(rate);
		
		request.getSession().setAttribute(CURRENCY, cCode);
		
	}

	
	private SiteView initSiteView() {
		SiteView siteView = new SiteView();
		
		Site site = SCacheFacade.getSite();
		List<Category> categories = SCacheFacade.getTopCategories();
		String host = "http://"+site.getDomain();
		
		siteView.setHost(host);
		siteView.setSite(site);
		siteView.setCurrencies(this.currencies);
		siteView.setCategories(categories);
		siteView.setImageHost("http://www.honeybuy.com");
		siteView.setCrossSales(this.crossSales);
		
		List<Country> countries = ServiceFactory.getService(CountryService.class).getAllCountries();
		
		Map<String, Country> cMap = new HashMap<String,Country>();
		
		for (Iterator iterator = countries.iterator(); iterator.hasNext();) {
			Country country = (Country) iterator.next();
			cMap.put(country.getId()+"", country);
		}
		
		siteView.setCountries(countries);
		siteView.setCountryMap(cMap);
		
		return siteView;
	}
	
	
}
