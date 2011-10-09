package com.spshop;

import magick.MagickException;

import com.spshop.model.Order;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.OrderService;
import com.spshop.service.intf.TabProductService;

public class Main {
	public static void main(String[] args) throws MagickException {
		
		System.out.println(ServiceFactory.getService(OrderService.class));
	}
}
