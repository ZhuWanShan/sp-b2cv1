package com.spshop.admin.client;


import com.google.gwt.user.client.rpc.AsyncCallback;
import com.spshop.model.QueryCriteria;
import com.spshop.model.Component;
public interface QueryServiceAsync {
	void greetServer(QueryCriteria criteria, AsyncCallback<QueryResult<Component>> callback) throws IllegalArgumentException;
}
