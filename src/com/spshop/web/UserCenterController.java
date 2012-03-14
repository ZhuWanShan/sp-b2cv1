package com.spshop.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserCenterController extends BaseController{
	@RequestMapping("/changePwd")
	public String changePwd(Model model) {
		return "changePwd";
	}
	
	@RequestMapping("/userProfile")
	public String userProfile(Model model) {
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
}
