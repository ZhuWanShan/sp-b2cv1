package com.spshop.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class TagsController extends BaseController{
	@RequestMapping("/index/{indexName}")
	public String helpIndex(Model model, @PathVariable("indexName")String index) {
		
		return "/tags/tagIndex";
	}
	
	@RequestMapping("/index")
	public String helpIndex(Model model) {
		
		return "/tags/tagIndexAll";
	}
	
	@RequestMapping("/k/{keyword}")
	public String helpPages(Model model, @PathVariable("keyword")String key) {
		
		return "/tags/tagKeyword";
	}
}
