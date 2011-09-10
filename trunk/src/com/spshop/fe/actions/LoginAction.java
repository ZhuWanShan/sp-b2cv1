package com.spshop.fe.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Order;
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

		Boolean loginSuccess = ServiceFactory.getService(UserService.class)
				.validateUser(user);
		if (loginSuccess) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			Order userOrder = SCacheFacade.getOrder(email);
			if (null != userOrder && null != userOrder.getItems()) {
				session.setAttribute("orderItemLength", String.valueOf(userOrder.getItems().size()));
			}

		} else {
			page.addPageProperty("loginError", AllConstants.LOGIN_FAILURE);
		}
		String url = request.getHeader("REFERER");
		String[] urlSplit = url.split("/");
		String forwardUrl = urlSplit[urlSplit.length - 1];
		page.addPageProperty("url", url);
		if (!forwardUrl.endsWith(".do") &&! url.endsWith("/")) {
			ActionForward forward = new ActionForward(forwardUrl);
			forward.setRedirect(true);
			return forward;
		}
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}

}