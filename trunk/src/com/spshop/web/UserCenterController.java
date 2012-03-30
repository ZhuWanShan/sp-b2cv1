package com.spshop.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spshop.model.Address;
import com.spshop.model.User;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CountryService;
import com.spshop.service.intf.UserService;

import static com.spshop.utils.Constants.*;

@Controller
public class UserCenterController extends BaseController{
	@RequestMapping("/changePwd")
	public String changePwd(Model model) {
		return "changePwd";
	}
	
	@RequestMapping(value = "/changePwd", method=RequestMethod.POST)
	public String changePwd2(Model model, HttpServletRequest request) {
		String oldPWD = request.getParameter(TXT_PWD);
		String pwd1 = request.getParameter(TXT_NEW_PWD1);
		String pwd2 = request.getParameter(TXT_NEW_PWD2);
		User user = ServiceFactory.getService(UserService.class).queryUserByEmail(getUserView().getLoginUser().getEmail());
		if(null!=user && !user.getPassword().equals(oldPWD)){
			getUserView().getErr().put(WRONG_PWD, "Original password is wrong");
		}
		
		if(pwd1 == null || pwd1.length()<6){
			getUserView().getErr().put(REG_PWD_RE_ERR, "Invalid password");
		}else if(!pwd1.equals(pwd2)){
			getUserView().getErr().put(REG_PWD_RE_ERR, "Two new passwords are not same");
		}
		
		if(getUserView().getErr().isEmpty() && null!=user){
			user.setPassword(pwd1);
			user = ServiceFactory.getService(UserService.class).save(user);
			getUserView().getMsg().put(REG_USER_NAME_SUC, "Update successfully");
		}
		
		return "changePwd";
	}
	
	@RequestMapping("/userProfile")
	public String userProfile(Model model) {
		return "userProfile";
	}
	
	@RequestMapping("/shoppingCart_address")
	public String shoppingCartAdress(Model model) {
		return "shoppingCart_address";
	}
	
	@RequestMapping("/shoppingCart_payment")
	public String shoppingCartPayment(Model model) {
		return "shoppingCart_payment";
	}
	
	@RequestMapping(value="/userProfile", params={"action=updateAccount"},method=RequestMethod.POST)
    public String updateAccount(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		String firstName = request.getParameter(C_USER_FIRST_NAME);
		String lastName = request.getParameter(C_USER_LAST_NAME);
		
		if(StringUtils.isBlank(firstName)||firstName.length()>50){
			getUserView().getErr().put(FIRST_NAME_ERR, "invalid first name");
		}
		
		if(StringUtils.isBlank(lastName)||lastName.length()>50){
			getUserView().getErr().put(LAST_NAME_ERR, "invalid last name");
		}
		
		if(getUserView().getErr().isEmpty()){
			User user = getUserView().getLoginUser();
			
			user.setFirstName(firstName);
			user.setLastName(lastName);
			
			ServiceFactory.getService(UserService.class).saveUser(user);
			
			getUserView().getMsg().put(UPDATE_ACC_SUC, "Update successfully");
			
		}
		
        return "userProfile";
    }
	
	@RequestMapping(value="/userProfile", params={"action=updateAddress1"},method=RequestMethod.POST)
    public String updateAddress1(Model model,HttpServletRequest request, HttpServletResponse response) {
		
		String type = request.getParameter(ADD_TYPE);
		
		Address address = retrieveAddress(request);
		
		getUserView().getErr().putAll(validateAddress(address, type));
		
		if(getUserView().getErr().isEmpty()){
			User user = getUserView().getLoginUser();
			user.setPrimaryAddress(address);
			user = ServiceFactory.getService(UserService.class).saveUser(user);
			getUserView().getMsg().put(UPDATE_ADDRESS_1_SUC, "Update successfully");
		}
		
		model.addAttribute(PRIMARY_ADDRESS, address);
		
        return "userProfile";
    }
	
	@RequestMapping(value="/userProfile", params={"action=updateAddress2"},method=RequestMethod.POST)
    public String updateAddress2(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		
		String type = request.getParameter(ADD_TYPE);
		String sameAsPrimary = request.getParameter(BILLING_SAME_AS_PRIMARY);
		Address address = retrieveAddress(request);
		if(!StringUtils.isNotBlank(sameAsPrimary)){
			getUserView().getErr().putAll(validateAddress(address, type));
			
			if(getUserView().getErr().isEmpty()){
				User user = getUserView().getLoginUser();
				user.setBillingAddress(address);
				user.setBillingSameAsPrimary(false);
				user = ServiceFactory.getService(UserService.class).saveUser(user);
				getUserView().setLoginUser(user);
				getUserView().getMsg().put(UPDATE_ADDRESS_2_SUC, "Update successfully");
			}
		}else{
			User user = getUserView().getLoginUser();
			user.setBillingSameAsPrimary(true);
			user = ServiceFactory.getService(UserService.class).saveUser(user);
			getUserView().setLoginUser(user);
			getUserView().getMsg().put(UPDATE_ADDRESS_2_SUC, "Update successfully");
		}
		
		model.addAttribute(BILLING_ADDRESS, address);
		
        return "userProfile";
    }
	
	@RequestMapping("/myOrder")
	public String myOrder(Model model) {
		return "userOrder";
	}
	
	@RequestMapping("/orderDetails")
	public String orderDetails(Model model) {
		return "orderDetails";
	}
	
	
	private Address retrieveAddress(HttpServletRequest request){
		String type = request.getParameter(ADD_TYPE);
		String userName = request.getParameter(type+USERNAME);
		String add1 = request.getParameter(type+ADDRESS1);
		String add2 = request.getParameter(type+ADDRESS2);
		String city = request.getParameter(type+CITY);
		String stateP = request.getParameter(type+STATE_PROVINCE);
		String c = request.getParameter(type+COUNTRY);
		String postalCode = request.getParameter(type+POASTAL_CODE);
		String telNum = request.getParameter(type+TEL_NUM);
		
		int intC = 0;
		
		try {
			intC =  Integer.parseInt(c);
		} catch (NumberFormatException e) {
		}
		
		return new Address(userName, add1, add2, city, stateP, intC, postalCode, telNum);
	}
	
	private Map<String,String> validateAddress(Address address,String type){
		Map<String, String> err = new HashMap<String,String>();
		
		if(StringUtils.isBlank(address.getFullName())||address.getFullName().length()>100){
			err.put(type+USERNAME_ERR, "Invalid username");
		}
		
		if(StringUtils.isBlank(address.getAddress1())||address.getAddress1().length()>200){
			err.put(type+ADDRESS1_ERR, "Invalid address");
		}
		
		if(StringUtils.isNotBlank(address.getAddress2())&&address.getAddress2().length()>200){
			err.put(type+ADDRESS2_ERR, "Invalid address");
		}
		
		if(StringUtils.isBlank(address.getCity())||address.getCity().length()>100){
			err.put(type+CITY_ERR, "Invalid city");
		}
		
		if(null == ServiceFactory.getService(CountryService.class).getCountryById(address.getCountry())){
			err.put(type+COUNTRY_ERR, "Invalid country");
		}
		
		if(StringUtils.isBlank(address.getStateProvince())||address.getStateProvince().length()>100){
			err.put(type+STATE_PROVINCE_ERR, "Invalid state");
		}
		
		if(StringUtils.isBlank(address.getPostalCode())||address.getPostalCode().length()>100){
			err.put(type+POSTAL_CODE_ERR, "Invalid postal code");
		}
		
		if(StringUtils.isBlank(address.getPhone())||address.getPhone().length()>100){
			err.put(type+TEL_NUM_ERR, "Invalid phone number");
		}
		
		return err;
	}
}
