package com.spshop.fe.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Order;
import com.spshop.model.OrderItem;
import com.spshop.model.UserOption;
import com.spshop.utils.AllConstants;

public class UpdateItemQtyAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		int itemIndex = Integer.valueOf(request.getParameter("itemIndex"));
		int itemQty =  Integer.valueOf(request.getParameter("itemQty"));
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		Order order = SCacheFacade.getOrder(email);
		float price = 0;
		for(UserOption uo : order.getItems().get(itemIndex).getUserOptions()){
			if ("Qty".equals(uo.getOptionName())) {
				uo.setValue(String.valueOf(itemQty));
				order.getItems().get(itemIndex).setQuantity(itemQty);
			}
			if ("price".equals(uo.getOptionName())) {
				price = Float.valueOf(uo.getValue());
			}
		}
		float finalPrice = price*itemQty;
		order.getItems().get(itemIndex).setFinalPrice(finalPrice);
		
		float orderTotalPrice = 0;
		for (OrderItem item : order.getItems()) {
			orderTotalPrice = orderTotalPrice + item.getFinalPrice();
		}
		order.setTotalPrice(orderTotalPrice);
		
		SCacheFacade.addOrder(email, order);
		
		page.addPageProperty("orderDetail", order);
		session.setAttribute("orderItemLength", String.valueOf(order.getItems().size()));
		session.setAttribute("userOrder", order);
		
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}

}