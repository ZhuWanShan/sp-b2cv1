package com.spshop.admin.server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gwt.user.server.rpc.RemoteServiceServlet;
import com.spshop.admin.shared.ExceptionType;
import com.spshop.admin.shared.LoginInfo;
import com.spshop.model.Site;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.SiteService;
import com.spshop.utils.AllConstants;

public class RemoteService extends RemoteServiceServlet {
	public static final long DEFAULT_SITE_ID = 1L;
	/**
	 * 
	 */
	private static final long serialVersionUID = 3690600832380549450L;

	protected void validate(HttpServletRequest request) {
		LoginInfo loginInfo = (LoginInfo) request.getSession().getAttribute(
				AllConstants.ADMIN_LOGIN_INFO);
		if (null == loginInfo) {
			throw new RuntimeException(ExceptionType.NO_SIGN_IN.getValue());
		}
	}

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		super.service(request, response);
	}

	public LoginInfo getLoginInfo() {
		LoginInfo loginInfo = (LoginInfo) getThreadLocalRequest().getSession()
				.getAttribute(AllConstants.ADMIN_LOGIN_INFO);
		if (null == loginInfo) {
			loginInfo = new LoginInfo();
			Site site = ServiceFactory.getService(SiteService.class).getSiteById(
					DEFAULT_SITE_ID);
			loginInfo.setSite(site);
			loginInfo.setUserID("szhu.spark@gmail.com");
			getThreadLocalRequest().getSession().setAttribute(
					AllConstants.ADMIN_LOGIN_INFO, loginInfo);
		}
		return loginInfo;
	}
}
