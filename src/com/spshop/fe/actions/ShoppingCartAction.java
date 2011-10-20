package com.spshop.fe.actions;

import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Order;
import com.spshop.model.Product;
import com.spshop.model.User;
import com.spshop.model.UserOption;
import com.spshop.model.cart.ShoppingCart;
import com.spshop.model.enums.OrderStatus;
import com.spshop.model.enums.SelectType;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.OrderService;
import com.spshop.utils.AllConstants;

public class ShoppingCartAction extends BaseAction {
	
	private static final String PRODUCT_ID = "ProductId";
	private static final String COLOR = "color";
	private static final String QTY = "qty";
	private static final String TEXT = "text";
	private static final String TEXTS = "texts";
	private static final String SPLITER = "@";
	private static final String ADDITEM = "addItem";
	private static final String UPDATEITEM = "updateItem";
	private static final String REMOVEITEM = "removeItem";
	private static final String ITEMNAME = "itemName";
	private static final String OPERATION = "operation";
	private static final String CHECKOUT = "checkout";
	
	@SuppressWarnings("unchecked")
	private List<UserOption> retriveUserOptions(ServletRequest request){
		List<UserOption> options = new ArrayList<UserOption>();
		Enumeration<String> params = request.getParameterNames();
		while(params.hasMoreElements()){
			String param = params.nextElement();
			String[] ps = param.split(SPLITER);
			if(ps.length>1){
				UserOption option = new UserOption();
				option.setCreateDate(new Date());
				option.setOptionName(ps[1]);
				if(COLOR.equals(ps[0])){
					option.setValue(request.getParameter(param));
					option.setOptionType(SelectType.COLOR_SINGLE);
					options.add(option);
				}
				
				if(TEXT.equals(ps[0])){
					option.setValue(request.getParameter(param));
					option.setOptionType(SelectType.SINGLE_LIST);
					options.add(option);
				}
				
				if(TEXTS.equals(ps[0])){
					
				}
			}
		}
		return options;
	}
	
	
	
	private String retriveProductId(ServletRequest request){
		String productId = null;
		
		try {
			productId = request.getParameter(PRODUCT_ID);
		} catch (NumberFormatException e) {
			//e.printStackTrace();
		}
		
		return productId;
	}
	
	private int retriveQty(ServletRequest request){
		int quantity = 1;

		try {
			quantity = Integer.parseInt(request.getParameter(QTY));
		} catch (NumberFormatException e) {
			//e.printStackTrace();
		}
		
		if(quantity<1){
			quantity = 1;
		}
		
		return quantity;
	}
	
	private String retriveItemName(ServletRequest request){
		String name = "";

		try {
			name = request.getParameter(ITEMNAME);
		} catch (NumberFormatException e) {
			//e.printStackTrace();
		}
		return name;
	}
	
	private String retriveOption(ServletRequest request){
		return request.getParameter(OPERATION);
	}
	
	private User retriveUser(HttpServletRequest request){
		return (User) request.getSession().getAttribute(AllConstants.USER_INFO);
	}
	
	
	private void clearCart(HttpServletRequest request){
		Order order = new Order();
		order.setCreateDate(new Date());
		ShoppingCart shoppingCart = new ShoppingCart(order);
		request.getSession().setAttribute(SHOPPINGCART, shoppingCart);
		
	}
	
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		List<String> errorStrings = new ArrayList<String>();
		List<String> msgs = new ArrayList<String>();
		
		if(ADDITEM.equals(retriveOption(request))){
			int qty = retriveQty(request);
			Product product = SCacheFacade.getProduct(retriveProductId(request));
			List<UserOption> options = retriveUserOptions(request);
			
			getCart(request).addItem(product,options,qty);
		}
		
		if(UPDATEITEM.equals(retriveOption(request))){
			int qty = retriveQty(request);
			String itemName = retriveItemName(request);
			getCart(request).update(itemName,qty);
		}
		
		if(REMOVEITEM.equals(retriveOption(request))){
			String itemName = retriveItemName(request);
			getCart(request).remove(itemName);
		}
		
		if(CHECKOUT.equals(retriveOption(request))){
			Order order = getCart(request).getOrder();
			
			if(null==order.getItems()||order.getItems().size()<1){
				errorStrings.add("Shopping cart is empty!");
			}else{
				if(null!=retriveUser(request)){
					order.setUser(retriveUser(request));
				}
				order = ServiceFactory.getService(OrderService.class).saveOrder(order, OrderStatus.PENDING.getValue());
				order.setName(getOrderId());
				request.getSession().setAttribute(AllConstants.DEFAULT_ORDER, order);
			}
			clearCart(request);
		}
		
		request.setAttribute(AllConstants.REQUEST_ERROR, errorStrings);
		request.setAttribute(AllConstants.REQUEST_MSG, msgs);
		return mapping.findForward(AllConstants.SUCCESS_VALUE);

	}
	
	private String getOrderId(){
		String id = "Order";
		
		id = id + new Random().nextInt(999999);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + new Random().nextInt(999999);
		
		return id;
	}

}