package com.spshop.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserCenterController extends BaseController{
	@RequestMapping("/register")
	public String helloWorld(Model model) {
		return "register";
	}
}
