package com.spshop.admin.client.businessui.service;

import java.util.List;

import com.google.gwt.user.client.rpc.AsyncCallback;
import com.spshop.admin.shared.LoginInfo;
import com.spshop.exception.ServiceValidateException;
import com.spshop.model.Category;
import com.spshop.model.Component;
import com.spshop.model.Image;
import com.spshop.model.Product;
import com.spshop.model.query.QueryCriteria;
import com.spshop.model.query.QueryResult;

public interface AdminServiceAsync {

	void query(QueryCriteria criteria, AsyncCallback<QueryResult<Component>> callback)throws ServiceValidateException;

	void getLoginInfo(AsyncCallback<LoginInfo> callback)throws ServiceValidateException;

	void getAllCategory(AsyncCallback<List<Category>> callback)throws ServiceValidateException;

	void saveCategory(Category category, AsyncCallback<Category> callback)throws ServiceValidateException;

	void getImageById(long id, AsyncCallback<Image> callback)throws ServiceValidateException;

	void saveProduct(Product product, AsyncCallback<Product> callback) throws ServiceValidateException;

	void getAllCategory(boolean includeDisable,AsyncCallback<List<Category>> callback) throws ServiceValidateException;

}
