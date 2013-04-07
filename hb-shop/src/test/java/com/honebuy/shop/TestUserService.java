package com.honebuy.shop;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.honeybuy.shop.service.IUserService;

public class TestUserService extends AbstractSpringTestContext{
	
	@Autowired
	private IUserService userService;
	
	
	@Test
	public void test(){
		userService.getUserByName("");
	}
	
	
}
