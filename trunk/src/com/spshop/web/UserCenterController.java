package com.spshop.web;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spshop.utils.FeedTools;

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
	
	@RequestMapping("/ProductFeed")
    public String ProductFeed(Model model, HttpServletResponse response) {
	    FeedTools.generateProductsExcel();
        return null;
    }
}
