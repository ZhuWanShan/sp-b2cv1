package com.spshop.admin.server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gwt.user.server.rpc.RemoteServiceServlet;
import com.spshop.admin.shared.ExceptionType;
import com.spshop.admin.shared.LoginInfo;
import com.spshop.model.Site;

public class RemoteService extends RemoteServiceServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3690600832380549450L;

	protected void validate(){
		LoginInfo loginInfo = getLoginInfo();
		if(null==loginInfo){
			throw new RuntimeException(ExceptionType.NO_SIGN_IN.getValue());
		}
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		validate();
		super.service(request, response);
	}
	
	public LoginInfo getLoginInfo(){
		LoginInfo loginInfo = new LoginInfo();
		Site site = new Site();
		site.setId(1L);
		loginInfo.setSite(site);
		loginInfo.setUserID("szhu@gmail.com");
		return loginInfo;
	}
}
