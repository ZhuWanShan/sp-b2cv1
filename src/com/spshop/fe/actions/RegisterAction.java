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

public class RegisterAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if (email == null || password == null) {
		    return mapping.findForward(AllConstants.fAILURE_VALUE);
        } else {
            User user = new User();
            user.setEmail(email);
            user.setPassword(password);
    //		Boolean ifExist = ServiceFactory.getService(UserService.class).queryUserByEmail(email);
    //		if(ifExist){
    //			return mapping.findForward(AllConstants.fAILURE_VALUE);
    //		}
            page.addPageProperty("email", email);
            ServiceFactory.getService(UserService.class).merge(user);
            EmailTools.send(email,AllConstants.MAIL_SUBJECT,AllConstants.MAIL_CONTENT);
            return mapping.findForward(AllConstants.SUCCESS_VALUE);

        }
	}

	

}