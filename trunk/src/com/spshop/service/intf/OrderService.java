package com.spshop.service.intf;

import com.spshop.dao.intf.OrderDAO;

import com.spshop.model.Order;

public interface OrderService extends BaseService<Order,OrderDAO, Long>{
	public Order saveOrder(Order order);
}
