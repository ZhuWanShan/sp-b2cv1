package com.spshop.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import com.spshop.dao.intf.OrderDAO;
import com.spshop.model.Order;
import com.spshop.model.User;
import com.spshop.service.AbstractService;
import com.spshop.service.intf.OrderService;

public class OrderServiceImpl extends AbstractService<Order,OrderDAO, Long> implements OrderService{
	public Order saveOrder(Order order, String status){
		if(null!=order.getUser()){
			User usr = getDao().getUserById(order.getUser().getId());
			if(null!=usr){
				order.setUser(usr);
			}
		}
		
		if(order.getName() == null){
			order.setName(getOrderId());
		}
		
		order.setStatus(status);
		order.setUpdateDate(new Date());
		if(null==order.getCreateDate()){
			order.setCreateDate(new Date());
		}
		
		order = getDao().save(order);
		order = order.clone();
		
		return order;
	}

	@Override
	public Order getOrderById(String id) {
		String hql = "From Order as o where o.name = ? and o.status != 'ONSHOPPING'";
		@SuppressWarnings("unchecked")
		List<Object> cs = (List<Object>)getDao().queryByHQL(hql, id);
		if(null!=cs){
			for (Object object : cs) {
				return ((Order)object).clone();
			}
		}
		
		return null;
	}
	
	@Override
	public Order getCartById(String id) {
		
		long longId = 0;
		
		try {
			longId = Long.parseLong(id);
		} catch (NumberFormatException e) {
			return null;
		}
		
		String hql = "From Order as o where o.id = ? and o.status = 'ONSHOPPING'";
		@SuppressWarnings("unchecked")
		List<Object> cs = (List<Object>)getDao().queryByHQL(hql, longId);
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
		String hql = "From Order as o where o.user.id = ? and o.status != 'ONSHOPPING' order by o.id desc";
		List<Order> orders= new ArrayList<Order>();
		List<Object> cs = (List<Object>)getDao().queryByHQL(hql, userId);
		
		if(null!=cs){
			for (Object object : cs) {
				orders.add(((Order)object).clone());
			}
		}
		return orders;
	}
	
	protected String getOrderId(){
		String id = "";
		Date today = new Date();
		int y= today.getYear()%100;
		int m = today.getMonth();
		int d = today.getDate();
		String sy = "";
		String sm = "";
		String sd = "";
		
		if(y<10){
			sy = "0"+y;
		}else{
			sy = ""+ y;
		}
		
		if(m<10){
			sm = "0"+m;
		}else{
			sm = ""+ m;
		}
		
		if(d<10){
			sd = "0"+d;
		}else{
			sd = ""+ d;
		}
		id = id + sy+ sm + sd +"-";
		id = id + (char)(new Random().nextInt(26)+65);
		id = id + (char)(new Random().nextInt(26)+65);
		id = id + (char)(new Random().nextInt(26)+65);
		id = id + (char)(new Random().nextInt(26)+65);
		id = id + (new Random().nextInt(99)+100);
		
		return id;
	}

	@Override
	public Order getUserCart(long userId) {
		
		String hql = "From Order as o where o.user.id = ? and o.status = 'ONSHOPPING'";
		@SuppressWarnings("unchecked")
		List<Object> cs = (List<Object>)getDao().queryByHQL(hql, userId);
		if(null!=cs){
			for (Object object : cs) {
				return ((Order)object).clone();
			}
		}
		
		return null;
	}
}
