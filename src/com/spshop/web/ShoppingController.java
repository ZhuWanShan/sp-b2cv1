package com.spshop.web;

import static com.spshop.utils.Constants.*;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spshop.model.User;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.UserService;
import com.spshop.utils.EmailTools;
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
	

	@RequestMapping(value="/recoverPwd", method = RequestMethod.GET)
    public String recoverPwd2(Model model, HttpServletResponse response) {
        return "recoverPassword";
    }
	
	@RequestMapping(value="/createAccount", method = RequestMethod.GET)
    public String createAccount2(Model model, HttpServletResponse response) {
        return "login";
    }
	
	@RequestMapping(value="/createAccount", method = RequestMethod.POST)
    public String createAccount(Model model,HttpServletRequest request,HttpServletResponse response) {
		
		String email = request.getParameter(REG_USER_NAME);
		String pwd1 = request.getParameter(REG_PWD);
		String pwd2 = request.getParameter(REG_PWD_RE);
		
		String acceptLicense = request.getParameter(ACCEPT_LICENSE);
		
		if(!TRUE.equals(acceptLicense)){
			getUserView().getErr().put(ACCEPT_LICENSE_ERR, "Please accept license");
		}
		
		String landingpage = "";
		try {
			landingpage = URLDecoder.decode(request.getParameter(LOGIN_LANDING_PAGE_PARAM),"utf-8");
		} catch (Exception e) {
			logger.debug(e.getMessage());
		}
			
		getUserView().setRequestPage(landingpage);
		
		if(null==email || !(email.contains("@"))){
				getUserView().getErr().put(REG_USER_NAME_ERR, "Invalid user account");
		}else{
			User u = ServiceFactory.getService(UserService.class).queryUserByEmail(email);
			if(u != null){
				getUserView().getErr().put(REG_USER_NAME_ERR, "account already exist");
			}
		}
		
		if(pwd1==null || pwd1.length()<5){
			getUserView().getErr().put(REG_PWD_ERR, "Invalid password");
		}else{
			if(pwd2==null || !pwd1.equals(pwd2)){
				getUserView().getErr().put(REG_PWD_RE_ERR, "Two passwords are not same");
			}
		}
		
		
		if(getUserView().getErr().isEmpty()){
			User user = new User();
			user.setName(email);
			user.setEmail(email);
			user.setPassword(pwd1);
			user.setCreateDate(new Date());
			user.setUpdateDate(new Date());
			final User u = ServiceFactory.getService(UserService.class).saveUser(user);
			if(null!=u){
				getUserView().getMsg().put(REG_USER_NAME_SUC, "Create Account successfully");
				   final Map<String,Object> root = new HashMap<String,Object>(); 
		            root.put("user", u);
		            u.setPassword(u.getPassword().substring(0,u.getPassword().length()-2)+"**");
		            
		            model.addAttribute(USER_INFO, u);
					request.getSession().setAttribute(USER_INFO,u);
					getUserView().setLoginUser(u);
					Cookie cookie = new Cookie(COOKIE_ACCOUNT, Utils.OBJ.getEncryString(u.getEmail()+USER_NAME_PWD_SPLIT+u.getPassword()));
					cookie.setMaxAge(99999999);
					cookie.setPath("/");
					response.addCookie(cookie);
		            
		            new Thread(){
		                public void run() {
		                    try{
		                        EmailTools.sendMail("register", "Welcome to Honeybuy.com, New Member Registration", root, u.getName());
		                    }catch(Exception e){
		                        
		                    }
		                };
		            }.start();
				
				return "userProfile";
			}
		}
		
        return "login";
    }
	
	@RequestMapping(value="/checkUserEmail")
	public String checkUserEmail(@RequestParam("RegEmail") String email, HttpServletResponse response){
		
		/*if(nu){
			
		}*/
		
		return null;
	}
	
	@RequestMapping(value="/recoverPwd", method = RequestMethod.POST)
    public String recoverPwd(Model model,HttpServletRequest request, HttpServletResponse response) {
		
		String userID = request.getParameter(LOGIN_USER_NAME);
		
		User user = ServiceFactory.getService(UserService.class).queryUserByEmail(userID);
		
		if(null == user){
			getUserView().getErr().put(USER_ACCOUNT_ERROR, "Account is not exist!");
		}else{
			getUserView().getMsg().put(RECOVER_SUCCESS, "recover success, send password to your email");
			
			final Map<String, Object> root = new HashMap<String, Object>();
			root.put("user", user);
			
			final String username = user.getName();
			
			if(null!=user.getPassword() && user.getPassword().length()>2){
				user.setPassword(user.getPassword().substring(0,user.getPassword().length()-2)+"**");
			}
			new Thread(){
				@Override
				public void run() {
					EmailTools.sendMail("recovery", "Congratulations! Your password is found", root, username);
				}
			}.start();
		}
		
        return "recoverPassword";
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
				logger.debug(e.getMessage());
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
				logger.error(e.getMessage());
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
			}else{
				getUserView().getErr().put(USER_ACCOUNT_ERROR, "User account/password invalid!");
			}
			
			try {
				landingpage = URLEncoder.encode(landingpage,"utf-8");
			} catch (Exception e) {
				logger.debug(e.getMessage());
			}
			
			getUserView().setRequestPage(landingpage);
		
		return "login";
	}
	
	
}
