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
import com.spshop.utils.EmailTools;

public class RecoveryPasswordAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String email = request.getParameter("recoveryEmail");
		User user = ServiceFactory.getService(UserService.class).queryUserByEmail(email);
		if (user != null) {
            EmailTools.sendRecoveryEmail(email);
        }
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}

}