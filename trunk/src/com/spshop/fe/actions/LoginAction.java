package com.spshop.fe.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.User;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.UserService;
import com.spshop.utils.AllConstants;

public class LoginAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String email = request.getParameter("loginEmail");
		String password = request.getParameter("loginPassword");
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		
		Boolean loginSuccess = ServiceFactory.getService(UserService.class).validateUser(user);
		if(loginSuccess){
			page.addPageProperty("email", email);
			return mapping.findForward(AllConstants.SUCCESS_VALUE);
		}
		page.addPageProperty("loginError", AllConstants.LOGIN_FAILURE);
		return mapping.findForward(AllConstants.fAILURE_VALUE);
	}


}