package com.spshop.utils;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import com.spshop.model.Order;
import com.spshop.web.ShoppingController;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class CheckoutUtils {
	private static Logger logger = Logger.getLogger(CheckoutUtils.class);
	public final static String verifykey = "57F22FCA-01B9-431F-85FA-5B78E8A6CA52";
	public static String RequestToken(String amount, String id, String currency, String returnUrl) throws IOException {
		URL url;
		String token = "init";
		String requestData = "";
		HttpURLConnection connection = null;
		StringBuilder response = new StringBuilder();
		StringBuilder JsonRequest = new StringBuilder();
		//System.setProperty("https.proxyHost", "web-proxy.atl.hp.com");
		//System.setProperty("https.proxyPort", "8080");
		try {
			// Build JSon request
			// sample:
			// {"paymentmode":"0","amount":"2.00","CurrencySymbol":"USD","MerchantCode":"MIRROR2XTEST",
			// "Password":"MIRROR2XTEST987","Action":"1","trackid":"123456","ReturnUrl":"http:\/\/www.your-response-page.com"}
			JSONObject obj = new JSONObject();
			obj.put("paymentmode", "0");
			obj.put("amount", amount);
			obj.put("currencysymbol", currency);
			obj.put("merchantcode", "HONEYBUYTEST");
			obj.put("password", "HONEYBUYTEST987");
			obj.put("action", "1");
			obj.put("trackid", id);
			obj.put("returnurl", returnUrl);
			
			//Merchant ID  HONEYBUYTEST Password  HONEYBUYTEST987
			// OPTIONAL fields for shipping
			// obj.put("ship_address","xxx");
			// obj.put("ship_email","xxx");
			// obj.put("ship_postal","xxx");
			// obj.put("ship_address2","xxx");
			// obj.put("returnurl","xxx");
			// obj.put("ship_city","xxx");
			// obj.put("ship_state","xxx");
			// obj.put("ship_phone","xxx");
			// obj.put("ship_country","xxx");
			// obj.put("ship_fax","xxx");
			// Mandatory for paymentmode = 1
			// obj.put("recurring_flag","xxx");
			// obj.put("recurring_interval","xxx");
			// obj.put("recurring_intervaltype","xxx");
			// obj.put("recurring_startdate","xxx");
			// obj.put("recurring_transactiontype","xxx");
			// obj.put("recurring_amount","xxx");
			// obj.put("recurring_auto","xxx");
			// obj.put("recurring_number","xxx");
			// Trial features optional for paymentmode = 1
			// obj.put("trial_transactiontype","xxx");
			// obj.put("trial_startdate","xxx");
			// obj.put("trial_amount","xxx");
			// obj.put("trial_number","xxx");
			// obj.put("trial_intervaltype","xxx");
			obj.toString();
			// Create connection and send token request
			url = new URL(
					"https://secure.egatepay.com/tokenservice/createtoken.ashx");
			connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json");
			connection.setRequestProperty("Accept-Charset", "UTF-8");
			connection.setUseCaches(false);
			connection.setDoInput(true);
			connection.setDoOutput(true);
			// Send request
			DataOutputStream wr = new DataOutputStream(
					connection.getOutputStream());
			wr.writeBytes(obj.toString());
			wr.flush();
			wr.close();
			// Get Response
			InputStream is = connection.getInputStream();
			BufferedReader rd = new BufferedReader(new InputStreamReader(is));
			String line;
			while ((line = rd.readLine()) != null) {
				response.append(line);
				response.append('\r');
			}
			rd.close();
			// retrieve payment token from response
			String s = "[" + response.toString() + "]";
			Object obj1 = JSONArray.fromObject(s);
			JSONArray array = (JSONArray) obj1;
			token = array.get(0).toString();
			JSONObject obj2 = (JSONObject) array.get(0);
			token = obj2.get("PaymentToken").toString();
		} catch (Exception e) {
			return e.getMessage();
		} finally {
			if (connection != null) {
				connection.disconnect();
			}
		}
		return token;
	}

	public static String hash(String token) {
		try {
			MessageDigest md;
			String message = token + verifykey;
			md = MessageDigest.getInstance("SHA-512");
			md.update(message.getBytes());
			byte[] mb = md.digest();
			String out1 = "";
			for (int i = 0; i < mb.length; i++) {
				byte temp = mb[i];
				String s = Integer.toHexString(new Byte(temp));
				while (s.length() < 2) {
					s = "0" + s;
				}
				s = s.substring(s.length() - 2);
				out1 += s;
			}
			return out1;
		} catch (Exception e) {
			return e.toString();
		}
	}
	
	  public static String VerifyResponse(String signature, HttpServletRequest request ){
	       //Transaction response handler
	       //?error_code_tag=&error_text=&result=Successful&responsecode=0&tranid=10000000&authcode=&trackid=&merchantid=&sig=
	       //create signature
	       //append values by sorting  the keys in ascending order excluding sig.
	       //e.g. authcode,error_code_tag,error_text,merchantid,responsecode,result,trackid,tranid
	       
	       StringBuilder response = new StringBuilder();
	       //request = HttpServletRequest;
	       String authcode = request.getParameter("authcode");
	       String type = request.getParameter("type");
	       String merchantid = request.getParameter("merchantid");
	       String responsecode = request.getParameter("responsecode");
	       String result = request.getParameter("result");
	       String trackid = request.getParameter("trackid");
	       String tranid = request.getParameter("tranid");
	       /*if(String){
	    	   response.append(authcode);
	  		}*/
	       response.append(authcode);
	       response.append(merchantid);
	       response.append(responsecode);
	       response.append(result);
	       response.append(trackid);
	       response.append(tranid);
	       response.append(type);
	      // response.append(verifykey);
	       String hashResponse = hash(response.toString());
	       
	       logger.info(String.format(">>>>>>>>>>>>>>>>Recive Response authcode=%1$2s, type = %2$2s, " +
	       		"merchantid=%3$2s, " +
	       		"responsecode=%4$2s, " +
	       		"result=%5$2s" +
	       		"trackid=%6$2s" +
	       		"tranid=%7$2s", 
	       		
	       		authcode, type, merchantid, responsecode, result, trackid, tranid ));
	       
	       if(signature.equalsIgnoreCase(hashResponse.toString())){
	           System.out.println("valid response from server");
	       }else
	       {
	           System.out.println("Invalid response");
	       }        
	       return response.toString();   
	   }
	
	
	public static void main(String[] args) throws IOException {
		System.out.println(RequestToken("99", "123445", "USD", "http://www.google.com"));
	}
	
}
