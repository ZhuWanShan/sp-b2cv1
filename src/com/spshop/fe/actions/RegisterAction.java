package com.spshop.fe.actions;

import java.util.Date;

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

public class RegisterAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User tempUser = null;
		if (email != null && !"".equals(email)) {
		    tempUser = ServiceFactory.getService(UserService.class).queryUserByEmail(email);
        }
		
		if (email == null || password == null || tempUser != null) {
		    return mapping.findForward(AllConstants.fAILURE_VALUE);
        } else {
            User user = new User();
            user.setEmail(email);
            user.setPassword(password);
            user.setCreateDate(new Date());
            user.setName(email);
            
            ServiceFactory.getService(UserService.class).merge(user);
            EmailTools.send(email,AllConstants.MAIL_SUBJECT,AllConstants.MAIL_CONTENT);
            request.getSession(true).setAttribute("email", email);
            return mapping.findForward(AllConstants.SUCCESS_VALUE);

        }
	}

	

}