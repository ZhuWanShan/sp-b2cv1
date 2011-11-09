package com.spshop.fe.actions;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Order;
import com.spshop.model.enums.OrderStatus;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.OrderService;

public class CheckOrder extends BaseAction {
	
	private static final String ACCOUNT = "s1@hp.com";
	@SuppressWarnings("rawtypes")
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		try {
			System.out.println("Accept request");
			
			List<String> errorStrings = new ArrayList<String>();
			List<String> msgs = new ArrayList<String>();
			
			Enumeration en = request.getParameterNames();
			String str = "cmd=_notify-validate";
			System.out.println("################Accept######################");
			while (en.hasMoreElements()) {
				String paramName = (String) en.nextElement();
				String paramValue = request.getParameter(paramName);
				str = str + "&" + paramName + "="
						+ URLEncoder.encode(paramValue, "iso-8859-1");
				System.out.println(paramName+": " + request.getParameter(paramName));
			}
			System.out.println("######################################");
			System.out.println("str: " + str);
			System.out.println("######################################");
			URL u = new URL("https://www.sandbox.paypal.com/c2/cgi-bin/webscr");
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
			String address_city = request.getParameter("address_city");
			String contact_phone = request.getParameter("contact_phone");
			String address_country = request.getParameter("address_country");
			String address_street = request.getParameter("address_street");
			String address_zip = request.getParameter("address_zip");
			String first_name = request.getParameter("first_name");
			String last_name = request.getParameter("last_name");
			Enumeration els = request.getParameterNames();
			// …
			// 获取 PayPal 对回发信息的回复信息，判断刚才的通知是否为 PayPal 发出的
			if ("VERIFIED".equals(res)) {
				// 检查付款状态
				// 检查 txn_id 是否已经处理过
				// 检查 receiver_email 是否是您的 PayPal 账户中的 EMAIL 地址
				// 检查付款金额和货币单位是否正确
				// 处理其他数据，包括写数据库
				Order order = ServiceFactory.getService(OrderService.class).getOrderById(itemName);
				System.out.println(">>>>>>>>>>>>>>>>>>>VERIFIED>>>>>>>>>>>>>>>>>>>>>>");
				if(null!=order){
					order.setCustomerEmail(payerEmail);
					System.out.println(">>>>>>>>>>>>>>>>>>>paymentAmount:"+paymentAmount+">>>>>>>>>>>>>>>>>>>>>>");
					System.out.println(">>>>>>>>>>>>>>>>>>>paymentCurrency:"+paymentCurrency+">>>>>>>>>>>>>>>>>>>>>>");
					System.out.println(">>>>>>>>>>>>>>>>>>>receiverEmail:"+receiverEmail+">>>>>>>>>>>>>>>>>>>>>>");
					System.out.println(">>>>>>>>>>>>>>>>>>>itemNumber:"+itemNumber+">>>>>>>>>>>>>>>>>>>>>>");
					System.out.println(">>>>>>>>>>>>>>>>>>>(order.getTotalPrice()+order.getDePrice()):"+(order.getTotalPrice()+order.getDePrice())+">>>>>>>>>>>>>>>>>>>>>>");
					if((order.getTotalPrice()+order.getDePrice()) <= Float.parseFloat(paymentAmount)
							&&order.getCurrency().equals(paymentCurrency)
							&&receiverEmail.equalsIgnoreCase(ACCOUNT)
							&&itemNumber.equals("1")){
						order.setStatus(OrderStatus.PAYED.getValue());
					}else{
						System.out.println(">>>>>>>>>>>>>>>>>>>NOT enough mony>>>>>>>>>>>>>>>>>>>>>>");
					}
					
					if("PA".equals(order.getOrderType())){
						order.setCity(address_city);
						order.setCustomerCountry(address_country);
						order.setCustomerName(last_name+" " + first_name);
						order.setCustomerZipcode(address_zip);
						order.setCustomerTelephone(contact_phone);
						order.setCustomerAddress(address_street);
						System.out.println("Pay>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
					}
				}
				
				
			} else if ("INVALID".equals(res)) {
				// 非法信息，可以将此记录到您的日志文件中以备调查
				System.out.println("##############INVALID########################");
			} else {
				// 处理其他错误
				System.out.println("##############ORTHER########################");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		 return null;
	}
	
	
}