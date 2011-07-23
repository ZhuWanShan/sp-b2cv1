package com.spshop.admin.client.businessui;

import com.google.gwt.user.client.rpc.RemoteService;
import com.google.gwt.user.client.rpc.RemoteServiceRelativePath;
import com.spshop.model.QueryResult;
import com.spshop.model.QueryCriteria;
import com.spshop.model.Component;
@RemoteServiceRelativePath("query")
public interface QueryService  extends RemoteService{
	QueryResult<Component> greetServer(QueryCriteria criteria) throws IllegalArgumentException;
}
