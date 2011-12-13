package com.spshop.model.cart;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.spshop.model.Order;
import com.spshop.model.OrderItem;
import com.spshop.model.Product;
import com.spshop.model.UserOption;
import com.spshop.model.enums.OrderStatus;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.OrderService;

public class ShoppingCart {
	private Order order;

	public ShoppingCart(Order order) {
		this.setOrder(order);
		if(null==order.getItems()){
			order.setItems(new ArrayList<OrderItem>());
		}
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Order getOrder() {
		return order;
	}

	public void addItem(Product product, List<UserOption> options, int qty) {
		if(null!=order.getItems()){
			boolean existItem = false;
			for (OrderItem item : order.getItems()) {
				if(item.getProduct().getName().equals(product.getName())){
					if(options.containsAll(item.getUserOptions())&&item.getUserOptions().containsAll(options)){
						existItem = true;
						item.setQuantity(item.getQuantity()+qty);
						item.setUpdateDate(new Date());
						item.setFinalPrice((float)(item.getQuantity()*product.getActualPrice()));
					}
				}
			}
			
			if(!existItem){
				OrderItem orderItem = new OrderItem();
				orderItem.setName(product.getName()+"-"+System.currentTimeMillis());
				orderItem.setProduct(product);
				orderItem.setUserOptions(options);
				orderItem.setCreateDate(new Date());
				orderItem.setUpdateDate(new Date());
				orderItem.setQuantity(qty);
				orderItem.setFinalPrice((float)product.getActualPrice());
				order.getItems().add(orderItem);
			}
			
		}
		updateCat();
	}

	public void update(String itemName, int qty) {
		if(null!=order.getItems()){
			for (OrderItem item : order.getItems()) {
				if(item.getName().equals(itemName)){
					item.setQuantity(qty);
					item.setFinalPrice((float)(item.getProduct().getActualPrice()));
				}
			}
		}
		updateCat();
	}

	public void remove(String itemName) {
		if(null!=order.getItems()){
			OrderItem toRemoveItem = null;
			for (OrderItem item : order.getItems()) {
				if(item.getName().equals(itemName)){
					toRemoveItem = item;
				}
			}
			if(null!=toRemoveItem){
				order.getItems().remove(toRemoveItem);
			}
		}
		updateCat();
	}
	
	public int getItemCount(){
		if(null!=order&&order.getItems()!=null){
			return order.getItems().size();
		}
		return 0;
	}
	
	private void updateCat(){
		if(null!=order.getItems()||order.getItems().size()>1){
			float totalPrice = 0;
			for (OrderItem orderItem : order.getItems()) {
				totalPrice = totalPrice + orderItem.getFinalPrice()*orderItem.getQuantity();
			}
			order.setTotalPrice(totalPrice);
		}else{
			order.setTotalPrice(0f);
		}
		ServiceFactory.getService(OrderService.class).saveOrder(order, OrderStatus.ONSHOPPING.getValue());
	}
}
