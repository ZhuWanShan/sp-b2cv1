package com.spshop.admin.server;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spshop.admin.shared.LoginInfo;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.SiteService;
import com.spshop.utils.AllConstants;

public class LoginService extends HttpServlet{
	
	private final String SUCCESS="ShopAdmin.jsp";
	private final String SUCCESS_DEBUG="ShopAdmin.jsp?gwt.codesvr=127.0.0.1:9997";
	private final String FAILURE="Admin.jsp";
	
	private final static Properties users = new Properties();
	
	static{
		try {
			users.load(LoginService.class.getResourceAsStream("/adminUser.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 *
	 */
	private static final long serialVersionUID = 5106197319286040491L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username=req.getParameter("username");
		String pwd = req.getParameter("pwd");
		String debug = req.getParameter("debug");
		if(null!=username){
			if(users.containsKey(username)&&users.get(username).equals(pwd)){
				LoginInfo info = new LoginInfo();
				info.setSite(ServiceFactory.getService(SiteService.class).getSiteById(AllConstants.DEFAULT_SITE_ID));
				info.setUserID(username);
				req.getSession().setAttribute(AllConstants.ADMIN_LOGIN_INFO, info);
				//req.getRequestDispatcher(SUCCESS).forward(req, resp);
				if(null!=debug){
					resp.sendRedirect(SUCCESS_DEBUG);
				}else{
					resp.sendRedirect(SUCCESS);
				}
				return;
			}
		}
		
		//req.getRequestDispatcher(FAILURE).forward(req, resp);
		resp.sendRedirect(FAILURE);
		return;
	}
}
