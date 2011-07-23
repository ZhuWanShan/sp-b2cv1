package com.spshop.admin.client.businessui;

import com.google.gwt.user.client.rpc.AsyncCallback;
import com.spshop.model.Component;
import com.spshop.model.QueryResult;
import com.spshop.model.QueryCriteria;

public interface QueryServiceAsync {

	void greetServer(QueryCriteria criteria,
			AsyncCallback<QueryResult<Component>> callback);

}
