package com.spshop.web.interceptor;

import static com.spshop.utils.Constants.*;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spshop.cache.SCacheFacade;
import com.spshop.model.Category;
import com.spshop.model.Country;
import com.spshop.model.Order;
import com.spshop.model.Site;
import com.spshop.model.User;
import com.spshop.model.cart.ShoppingCart;
import com.spshop.model.enums.OrderStatus;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CountryService;
import com.spshop.service.intf.OrderService;
import com.spshop.service.intf.UserService;
import com.spshop.utils.Utils;
import com.spshop.web.BaseController;
import com.spshop.web.view.SiteView;
import com.spshop.web.view.UserView;

public class ViewDataInterceptor extends HandlerInterceptorAdapter{
	
	private Logger logger = Logger.getLogger(ViewDataInterceptor.class);
	protected Map<String, Float> currencies;
	
	public ViewDataInterceptor() {
		Properties cp = new Properties();
		try {
			currencies = new HashMap<String, Float>();
			cp.load(ViewDataInterceptor.class.getResourceAsStream("/currency.properties"));
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
		User user = retrieveUser(request);
		ShoppingCart shoppingCart = retrieveShoppingCart(request, user);
		
		userView.setLoginUser(user);
		userView.setCart(shoppingCart);
		
		setCurrency(request,userView,siteView.getCurrencies());
		
		String landingPage = request.getParameter(LOGIN_LANDING_PAGE_PARAM);
		if(StringUtils.isBlank(landingPage)){
			String url = request.getRequestURL().toString();
			if(url.endsWith(LOGIN_PAGE)||url.endsWith(REG_PAGE)){
				url = null;
			}
			String queryString = request.getQueryString();
			if(null != queryString && null != url){
				url = url + "?" + queryString;
				
			}
			if(null!=url){
				userView.setRequestPage(URLEncoder.encode(url,"UTF-8"));
			}
		}else{
			userView.setRequestPage(landingPage);
		}
		
		if(handler instanceof BaseController){
			BaseController controller = (BaseController) handler;
			
			//Site View
			controller.setSiteView(siteView);
			//User View
			controller.setUserView(userView);
		}
		
		return true;
	}
	
	
	private void setCurrency(HttpServletRequest request, UserView userView, Map<String, Float> currencies) {
		String cCode = request.getParameter(CURRENCY);
		if(null == cCode || !currencies.containsKey(cCode)){
			cCode = DEFAULT_CURRENCY;
		}
		
		userView.setCurrencyCode(cCode);
		userView.getCart().getOrder().setCurrency(cCode);
		
		userView.setCurrencyRate(1);
		
		request.getSession().setAttribute(CURRENCY, cCode);
		
	}

	private ShoppingCart retrieveShoppingCart(HttpServletRequest request, User user) {
		
		ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute(SHOPPINGCART);
		
		if(null == cart){
			Order order = null;
			if(null!=user){
				order = ServiceFactory.getService(OrderService.class).getUserCart(user.getId());
			}
			
			if(null == order){
				order = new Order();
			}
			
			cart = new ShoppingCart(order);
			
			request.getSession().setAttribute(SHOPPINGCART, cart);
			
		}
		
		if(null!=user && cart.getOrder().getUser()==null){
			cart.getOrder().setUser(user);
			Order order = ServiceFactory.getService(OrderService.class).saveOrder(cart.getOrder(), OrderStatus.ONSHOPPING.toString());
			cart.setOrder(order);
		}
		
		return cart;
	}

	private User retrieveUser(HttpServletRequest request){
		User user = (User) request.getSession().getAttribute(USER_INFO);
		if(null==user){
			user = retrieveUserFromCookies(request.getCookies());
			 request.getSession().setAttribute(USER_INFO, user);
		}
		return user;
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
		
		List<Country> countries = ServiceFactory.getService(CountryService.class).getAllCountries();
		
		siteView.setCountries(countries);
		
		return siteView;
	}

	private User retrieveUserFromCookies(Cookie cookies[]){
		try {
			if(null!=cookies){
				for (Cookie  cookie: cookies) {
					if(COOKIE_ACCOUNT.equals(cookie.getName())){
						String value = Utils.OBJ.getDecry(cookie.getValue());
						String[] mixUser = value.split(USER_NAME_PWD_SPLIT);
						User user = new User();
						user.setEmail(mixUser[0]);
						user.setPassword(mixUser[1]);
						return ServiceFactory.getService(UserService.class).validateUser(user);
					}
				}
			}
		} catch (Exception e) {
			logger.info(e.getMessage());
		}
		return null;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		if(null!=modelAndView){
			UserView userView = (UserView) modelAndView.getModel().get(USER_VIEW);
			
			request.getSession().setAttribute(SHOPPINGCART, userView.getCart());
		}
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		super.afterCompletion(request, response, handler, ex);
	}
	
}
