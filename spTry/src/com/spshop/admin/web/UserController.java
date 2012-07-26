package com.spshop.admin.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spshop.admin.web.view.SearchResponseView;
import com.spshop.model.User;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.UserService;

@Controller
@RequestMapping("/resource/")
public class UserController {
	
	@RequestMapping(value="/user", method = {RequestMethod.POST, RequestMethod.PUT})
	public @ResponseBody User addUser(@RequestBody User u) {
		
		System.out.println(u);
		User user = new User();
		user.setName("xxx");
		return user;
 
	}
	
	@RequestMapping(value="/user/{name}", method = RequestMethod.GET)
	public @ResponseBody User getUserByeEmail(@PathVariable String name) {
		User user = new User();
		user.setName(name)  ;
		return user;
	}
	
	@RequestMapping(value="/search", method = RequestMethod.GET)
	public @ResponseBody SearchResponseView<List<User>> queryUser() {
		
		try {
			Thread.currentThread().sleep(4000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		List<User> users = ServiceFactory.getService(UserService.class).findPageByPage(0, 20);
		
		return new SearchResponseView<List<User>>(true,users,100);
	}
}
