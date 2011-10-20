package com.spshop.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.spshop.dao.intf.OrderDAO;
import com.spshop.model.Order;
import com.spshop.service.AbstractService;
import com.spshop.service.intf.OrderService;

public class OrderServiceImpl extends AbstractService<Order,OrderDAO, Long> implements OrderService{
	public Order saveOrder(Order order, String status){
		order.setStatus(status);
		return getDao().save(order).clone();
	}

	@Override
	public Order getOrderById(String id) {
		String hql = "From Order as o where o.name = ? ";
		@SuppressWarnings("unchecked")
		List<Object> cs = (List<Object>)getDao().queryByHQL(hql, id);
		if(null!=cs){
			for (Object object : cs) {
				return ((Order)object).clone();
			}
		}
		
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getOrdersByUserId(long userId) {
		String hql = "From Order as o where o.user.id = ? order by o.id desc";
		List<Order> orders= new ArrayList<Order>();
		List<Object> cs = (List<Object>)getDao().queryByHQL(hql, userId);
		
		if(null!=cs){
			for (Object object : cs) {
				orders.add(((Order)object).clone());
			}
		}
		return orders;
	}
}
