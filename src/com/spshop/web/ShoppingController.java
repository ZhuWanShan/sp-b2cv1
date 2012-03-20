package com.spshop.web;

import static com.spshop.utils.Constants.*;

import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spshop.model.User;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.UserService;
import com.spshop.utils.FeedTools;
import com.spshop.utils.Utils;

@Controller
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
		Cookie[] cookies = request.getCookies();
		if(null!=cookies){
			for (Cookie  cookie: cookies) {
				if(COOKIE_ACCOUNT.equals(cookie.getName())){
					cookie = new Cookie(COOKIE_ACCOUNT, EMPTY_STR);
					cookie.setMaxAge(99999999);
					response.addCookie(cookie);
				}
			}
		}
		return "redirect:"+getSiteView().getHost(); 
	}
	
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login2(Model model,HttpServletRequest request,HttpServletResponse response){
		
		User user = retrieveUserNameAndPWDFromCookie(request.getCookies());
		
		if(user!=null){
			model.addAttribute(LOGIN_USER_NAME,user.getEmail());
			model.addAttribute(LOGIN_PWD,user.getPassword());
		}
		
		return "login";
		
	}
	
	private User retrieveUserNameAndPWDFromCookie(Cookie cookies[]){
		try {
			if(null!=cookies){
				for (Cookie  cookie: cookies) {
					if(COOKIE_ACCOUNT.equals(cookie.getName())){
						String value = Utils.OBJ.getDecry(cookie.getValue());
						String[] mixUser = value.split(USER_NAME_PWD_SPLIT);
						User user = new User();
						user.setEmail(mixUser[0]);
						user.setPassword(mixUser[1]);
						return user;
					}
				}
			}
		} catch (Exception e) {
			logger.info(e.getMessage());
		}
		return null;
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
				request.getSession().setAttribute(USER_INFO,loginUser);
				if(TRUE.equals(rememberAccount)){
					Cookie cookie = new Cookie(COOKIE_ACCOUNT, Utils.OBJ.getEncryString(loginUser.getEmail()+USER_NAME_PWD_SPLIT+loginUser.getPassword()));
					cookie.setMaxAge(99999999);
					cookie.setPath("/");
					response.addCookie(cookie);
				}
				return "redirect:"+landingpage;
			}
			
			try {
				landingpage = URLEncoder.encode(landingpage,"utf-8");
			} catch (Exception e) {
				logger.error(e.getMessage());
			}
		
		return "redirect:/uc/login?"+LOGIN_LANDING_PAGE_PARAM + "=" + landingpage;
	}
	
	
}
