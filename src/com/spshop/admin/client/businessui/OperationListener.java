package com.spshop.admin.client.businessui;

import com.spshop.model.Component;
public interface OperationListener<T extends Component> {
	void onEdit(T content);
	void onDelete(T content);
	
}
