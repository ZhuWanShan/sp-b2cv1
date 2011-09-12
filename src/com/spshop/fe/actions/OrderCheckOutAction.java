package com.spshop.fe.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Order;
import com.spshop.model.OrderStatus;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.OrderService;
import com.spshop.utils.AllConstants;

public class OrderCheckOutAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		String orderId = (String) request.getParameter("orderId");
		Order order;
		if (orderId == null) {
			order = SCacheFacade.getOrder(email);
			if (order != null && order.getItems() != null
					&& order.getItems().size() > 0) {
				OrderStatus status = new OrderStatus();
				status.setStatus("need to pay");
				order.setStatus(status);
				order = ServiceFactory.getService(OrderService.class).save(
						order);
				SCacheFacade.removeOrder(email);
			}
		} else {
			order = ServiceFactory.getService(OrderService.class).fetchById(
					Long.valueOf(orderId));
		}
		page.addPageProperty("orderDetail", order);
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}
}