package com.spshop.fe.actions;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Order;
import com.spshop.model.OrderItem;
import com.spshop.model.Product;
import com.spshop.model.UserOption;
import com.spshop.utils.AllConstants;

public class DisplayCartAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		Map<String, Object> optionMap = request.getParameterMap();
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		Order order = SCacheFacade.getOrder(email);
		if (null == order) {
			order = new Order();
			order.setCustomerEmail(email);
			order.setCreateDate(new Date());
		}

		Boolean addItem = false;
		List<UserOption> optionList = new ArrayList<UserOption>();
		float price = 0;
		int qty = 0;
		for (String key : optionMap.keySet()) {
			if (key.startsWith("product_")) {
				UserOption uo = new UserOption();
				String[] optionNames = key.split("_");
				String optionName = optionNames[optionNames.length - 1];
				uo.setOptionName(optionName);
				String value = "";
				Object object = optionMap.get(key);
				if (object instanceof String[]) {
					String[] values = (String[]) object;
					if (values != null && values.length == 1) {
						value = values[0];
					} else if (values != null && values.length > 1) {
						for (int i = 0; i < values.length; i++) {
							value = value + values[0] + ";";
						}
					}

				} else {
					value = (String) optionMap.get(key);
				}
				if ("product_inputText_price".equals(key)) {
					price = Float.valueOf(value);
				}
				if ("product_inputText_Qty".equals(key)) {
					qty = Integer.valueOf(value);
				}
				uo.setValue(value);
				addItem = true;
				optionList.add(uo);
			}
		}
		List<OrderItem> orderItems = order.getItems();
		if (null == orderItems) {
			orderItems = new ArrayList<OrderItem>();
		}
		boolean haveSameItem = false;
		if (addItem) {
			float totalPrice = (float) (price * qty);
			OrderItem oi = new OrderItem();
			oi.setCreateDate(new Date());
			oi.setUserOptions(optionList);
			oi.setFinalPrice(totalPrice);
			String productUrl = request.getHeader("REFERER");
			String[] uris = productUrl.split("/");
			String productName = uris[uris.length - 1];
			Product product = SCacheFacade.getProduct(productName);
			product.setProductUrl(productUrl);
			oi.setProduct(product);
			oi.setQuantity(qty);
			for (OrderItem cacheOi : orderItems) {
				if (cacheOi.getProduct().getId() == oi.getProduct().getId()) {
					haveSameItem = true;
					for (UserOption cacheUo : cacheOi.getUserOptions()) {
						for (UserOption uo : oi.getUserOptions()) {
							if (!uo.getOptionName().equals("Qty")
									&& cacheUo.getOptionName().equals(
											uo.getOptionName())) {
								if (!cacheUo.getValue().equals(uo.getValue())) {
									haveSameItem = false;
								}

							}
						}
					}
					if (haveSameItem) {
						cacheOi.setQuantity(cacheOi.getQuantity()
								+ oi.getQuantity());
						cacheOi.setFinalPrice(cacheOi.getFinalPrice()
								+ oi.getFinalPrice());
					}
				}
			}
			if (!haveSameItem) {
				orderItems.add(oi);
			}
		}

		order.setItems(orderItems);
		float orderTotalPrice = 0;
		for (OrderItem item : orderItems) {
			orderTotalPrice = orderTotalPrice + item.getFinalPrice();
		}
		order.setTotalPrice(orderTotalPrice);
		order.setCustomerEmail(email);
		SCacheFacade.addOrder(email, order);

		page.addPageProperty("orderDetail", order);
		session.setAttribute("orderItemLength",
				String.valueOf(order.getItems().size()));
		session.setAttribute("userOrder", order);

		return mapping.findForward(AllConstants.SUCCESS_VALUE);

	}

}