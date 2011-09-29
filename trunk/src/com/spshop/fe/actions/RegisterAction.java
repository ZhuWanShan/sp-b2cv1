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
    public ActionForward processer(ActionMapping mapping,
                                   PageFormBean page,
                                   HttpServletRequest request,
                                   HttpServletResponse response) throws Exception {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email != null && password != null) {
            User user = new User();
            user.setEmail(email);
            user.setPassword(password);
            createUser(user);
            
            EmailTools.sendRegisterEmail(email);
            
            request.getSession(true).setAttribute(AllConstants.USER_INFO, user);
            return mapping.findForward(AllConstants.SUCCESS_VALUE);
        } else {
            return mapping.findForward(AllConstants.fAILURE_VALUE);
        }
    }

    private void createUser(User user) {
        user.setCreateDate(new Date());
        user.setName(user.getEmail());
        user = ServiceFactory.getService(UserService.class).merge(user);
    }

}