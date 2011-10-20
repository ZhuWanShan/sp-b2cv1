package com.spshop.service.impl;

import com.spshop.dao.intf.OrderDAO;
import com.spshop.model.Order;
import com.spshop.service.AbstractService;
import com.spshop.service.intf.OrderService;

public class OrderServiceImpl extends AbstractService<Order,OrderDAO, Long> implements OrderService{
	public Order saveOrder(Order order, String status){
		order.setStatus(status);
		return getDao().save(order).clone();
	}
}
