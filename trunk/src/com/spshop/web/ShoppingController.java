package com.spshop.web;

import static com.spshop.utils.Constants.COOKIE_ACCOUNT;
import static com.spshop.utils.Constants.LOGIN_LANDING_PAGE_PARAM;
import static com.spshop.utils.Constants.LOGIN_PAGE;
import static com.spshop.utils.Constants.LOGIN_PWD;
import static com.spshop.utils.Constants.LOGIN_USER_NAME;
import static com.spshop.utils.Constants.REMEMBER_ID;
import static com.spshop.utils.Constants.SITE_VIEW;
import static com.spshop.utils.Constants.TRUE;
import static com.spshop.utils.Constants.USER_INFO;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.support.BindingAwareModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spshop.model.User;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.UserService;
import com.spshop.utils.FeedTools;
import com.spshop.utils.Utils;

@Controller
@SessionAttributes("userInfo")
public class ShoppingController extends BaseController{
	
	private Logger logger = Logger.getLogger(ShoppingController.class);
	
	@RequestMapping("/shoppingCart")
	public String shoppingCart(Model model) {
		return "shoppingCart";
	}
	
	
	@RequestMapping("/shoppingCart_address")
	public String shoppingCartAdress(Model model) {
		return "shoppingCart_address";
	}
	
	@RequestMapping("/shoppingCart_payment")
	public String shoppingCartPayment(Model model) {
		return "shoppingCart_payment";
	}
	
	@RequestMapping("/ProductFeed")
    public String ProductFeed(Model model, HttpServletResponse response) {
	    FeedTools.generateProductsExcel();
        return null;
    }
	
	@RequestMapping(value="/logout")
	public String logout(Model model,HttpServletRequest request,HttpServletResponse response){
		request.getSession().removeAttribute(USER_INFO);
		Model newModel = new BindingAwareModelMap();
		Map<String,Object> m = model.asMap();
		newModel.addAttribute(SITE_VIEW, m.get(SITE_VIEW));
		Cookie[] cookies = request.getCookies();
		if(null!=cookies){
			for (Cookie  cookie: cookies) {
				if(COOKIE_ACCOUNT.equals(cookie.getName())){
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		}
		
		return "redirect:"+getSiteView().getHost(); 
	}
	
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login2(Model model,HttpServletRequest request,HttpServletResponse response){
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(Model model,HttpServletRequest request,HttpServletResponse response){
		
		String landingpage = "";
			try {
				landingpage = URLDecoder.decode(request.getParameter(LOGIN_LANDING_PAGE_PARAM),"utf-8");
			} catch (Exception e) {
				logger.error(e.getMessage());
			}
			
			String userID = request.getParameter(LOGIN_USER_NAME);
			String pwd = request.getParameter(LOGIN_PWD);
			String rememberAccount = request.getParameter(REMEMBER_ID);
			
			User loginUser = null;
			
			if(StringUtils.isBlank(landingpage)){
				landingpage = getSiteView().getHost();
			}
			
			try {
				if(loginUser == null){
					User user = new User();
					user.setEmail(userID.trim());
					user.setPassword(pwd);
					loginUser = ServiceFactory.getService(UserService.class).validateUser(user);
				}
				
			} catch (Exception e) {
				logger.info(e.getMessage());
			}
			
			if(null!=loginUser){
				model.addAttribute(USER_INFO, loginUser);
				if(TRUE.equals(rememberAccount)){
					Cookie cookie = new Cookie(COOKIE_ACCOUNT, Utils.encrypt(loginUser.getEmail()+"vvvvvxxxooovvvvvvv"+loginUser.getPassword()));
					cookie.setMaxAge(99999999);
					response.addCookie(cookie);
				}
				return "redirect:"+landingpage;
			}
			
			try {
				landingpage = URLEncoder.encode(landingpage,"utf-8");
			} catch (Exception e) {
				logger.info(e.getMessage());
			}
		
		return "redirect:"+LOGIN_PAGE+"?"+LOGIN_LANDING_PAGE_PARAM + "=" + landingpage;
	}
	
	
}
