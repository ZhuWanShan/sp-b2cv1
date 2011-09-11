package com.spshop.fe.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Order;
import com.spshop.utils.AllConstants;

public class OrderCheckOutAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		Order order = SCacheFacade.getOrder(email);
		page.addPageProperty("orderDetail", order);
		
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}

}