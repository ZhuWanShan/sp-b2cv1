package com.spshop.admin.client.businessui;

import java.util.List;

import com.google.gwt.user.client.rpc.RemoteService;
import com.google.gwt.user.client.rpc.RemoteServiceRelativePath;
import com.spshop.admin.shared.LoginInfo;
import com.spshop.model.Category;
import com.spshop.model.QueryResult;
import com.spshop.model.QueryCriteria;
import com.spshop.model.Component;
@RemoteServiceRelativePath("admin")
public interface AdminService  extends RemoteService{
	QueryResult<Component> query(QueryCriteria criteria) throws IllegalArgumentException;
	LoginInfo getLoginInfo()throws IllegalArgumentException;
	List<Category> getAllCategory();
	Category saveCategory(Category category);
}

