package com.spshop.fe.actions;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Order;
import com.spshop.model.User;
import com.spshop.model.cart.ShoppingCart;
import com.spshop.model.enums.OrderStatus;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.OrderService;
import com.spshop.utils.AllConstants;

public class CheckOrder extends BaseAction {
	@SuppressWarnings("rawtypes")
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		List<String> errorStrings = new ArrayList<String>();
		List<String> msgs = new ArrayList<String>();
		
		Enumeration en = request.getParameterNames();
		String str = "cmd=_notify-validate";
		while (en.hasMoreElements()) {
			String paramName = (String) en.nextElement();
			String paramValue = request.getParameter(paramName);
			str = str + "&" + paramName + "="
					+ URLEncoder.encode(paramValue, "iso-8859-1");
		}
		URL u = new URL("http://www.sandbox.paypal.com/cgi-bin/webscr");
		// URL u = new URL("http://www.paypal.com/cgi-bin/webscr");
		URLConnection uc = u.openConnection();
		uc.setDoOutput(true);

		uc.setRequestProperty("Content-Type",
				"application/x-www-form-urlencoded");
		PrintWriter pw = new PrintWriter(uc.getOutputStream());
		pw.println(str);
		pw.close();
		// 接受 PayPal 对 IPN 回发的回复信息
		BufferedReader in = new BufferedReader(new InputStreamReader(
				uc.getInputStream()));
		String res = in.readLine();
		in.close();
		// 将 POST 信息分配给本地变量，可以根据您的需要添加
		// 该付款明细所有变量可参考：
		// https://www.paypal.com/IntegrationCenter/ic_ipn-pdt-variable-reference.html
		String itemName = request.getParameter("item_name");
		String itemNumber = request.getParameter("item_number");
		String paymentStatus = request.getParameter("payment_status");
		String paymentAmount = request.getParameter("mc_gross");
		String paymentCurrency = request.getParameter("mc_currency");
		String txnId = request.getParameter("txn_id");
		String receiverEmail = request.getParameter("receiver_email");
		String payerEmail = request.getParameter("payer_email");
		// …
		// 获取 PayPal 对回发信息的回复信息，判断刚才的通知是否为 PayPal 发出的
		if (res.equals("VERIFIED")) {
			// 检查付款状态
			// 检查 txn_id 是否已经处理过
			// 检查 receiver_email 是否是您的 PayPal 账户中的 EMAIL 地址
			// 检查付款金额和货币单位是否正确
			// 处理其他数据，包括写数据库
			Order order = getCart(request).getOrder();
			
			Enumeration els = request.getParameterNames();
			
			while (els.hasMoreElements()) {
				String paramName = (String) els.nextElement();
				System.out.println(paramName+": " + request.getParameter(paramName));
			}
			
			if(null==order.getItems()||order.getItems().size()<1){
				errorStrings.add("Shopping cart is empty!");
			}else{
				if(null!=retriveUser(request)){
					order.setUser(retriveUser(request));
				}
				//order.setName(getOrderId());
				order = ServiceFactory.getService(OrderService.class).saveOrder(order, OrderStatus.PENDING.getValue());
				request.setAttribute(AllConstants.DEFAULT_ORDER, order);
			}
			clearCart(request);
		} else if (res.equals("INVALID")) {
			// 非法信息，可以将此记录到您的日志文件中以备调查
		} else {
			// 处理其他错误
		}

		 return mapping.findForward(AllConstants.SUCCESS_VALUE);
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
}