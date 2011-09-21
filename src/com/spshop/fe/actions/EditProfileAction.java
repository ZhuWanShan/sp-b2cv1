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

public class EditProfileAction extends BaseAction {

    @Override
    public ActionForward processer(ActionMapping mapping,
                                   PageFormBean page,
                                   HttpServletRequest request,
                                   HttpServletResponse response) throws Exception {
        User user = null;
        String email = String.valueOf(request.getSession().getAttribute("email"));
        Boolean isModify = Boolean.valueOf(request.getParameter("isModify")); 
        if (email != null && !"null".equals(email)) {
            user = ServiceFactory.getService(UserService.class).queryUserByEmail(email);
            if (isModify) {
                populateUserModel(user, request);
                user = ServiceFactory.getService(UserService.class).merge(user);
            }
            page.addPageProperty("userProfile", user);
            return mapping.findForward(AllConstants.SUCCESS_VALUE);
        } else {
            throw new IllegalStateException("This session timed out!!");
        }
    }
    
    private void populateUserModel(User user, HttpServletRequest request){
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String telephone = request.getParameter("telephone");
        String address = request.getParameter("address");
        String zipcode = request.getParameter("zipcode");
        String country = request.getParameter("country");
        
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setTelephone(telephone);
        user.setAddress(address);
        user.setZipcode(zipcode);
        user.setCountry(country);
    }

}
