package com.spshop.fe.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
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
    public ActionForward processer(ActionMapping mapping,
                                   PageFormBean page,
                                   HttpServletRequest request,
                                   HttpServletResponse response) throws Exception {

        String action = request.getParameter(AllConstants.ACTION);
        HttpSession session = request.getSession();
        if (AllConstants.LOGIN_ACTION.equals(action)) {
            User user = new User();
            populateLoginInfo(request, user);

            if (StringUtils.isNotEmpty(user.getEmail()) && StringUtils.isNotEmpty(user.getPassword())) {
                user = ServiceFactory.getService(UserService.class).validateUser(user);
                if (user != null) {
                    user.setPassword(null);
                    session.setAttribute(AllConstants.USER_INFO, user);
                } else {
                    page.addPageProperty("loginError", AllConstants.LOGIN_FAILURE);
                }

                return mapping.findForward(AllConstants.SUCCESS_VALUE);
            } else {
                return mapping.findForward(AllConstants.fAILURE_VALUE);
            }
        } else if (AllConstants.LOGOUT_ACTION.equals(action)) {
            session.removeAttribute(AllConstants.USER_INFO);
            return mapping.findForward(AllConstants.SUCCESS_VALUE);
        } else {
            return mapping.findForward(AllConstants.fAILURE_VALUE);
        }
    }

    private void populateLoginInfo(HttpServletRequest request, User user) {
        String email = request.getParameter("loginEmail");
        String password = request.getParameter("loginPassword");
        user.setEmail(email);
        user.setPassword(password);
    }

}