package com.spshop.admin.client.businessui;

import java.util.List;

import com.google.gwt.user.client.rpc.AsyncCallback;
import com.spshop.admin.shared.LoginInfo;
import com.spshop.model.Category;
import com.spshop.model.Component;
import com.spshop.model.Image;
import com.spshop.model.QueryResult;
import com.spshop.model.QueryCriteria;

public interface AdminServiceAsync {

	void query(QueryCriteria criteria, AsyncCallback<QueryResult<Component>> callback);

	void getLoginInfo(AsyncCallback<LoginInfo> callback);

	void getAllCategory(AsyncCallback<List<Category>> callback);

	void saveCategory(Category category, AsyncCallback<Category> callback);

	void getImageById(long id, AsyncCallback<Image> callback);

}
