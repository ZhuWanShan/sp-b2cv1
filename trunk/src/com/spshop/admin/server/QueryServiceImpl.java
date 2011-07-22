package com.spshop.admin.server;


import com.google.gwt.user.server.rpc.RemoteServiceServlet;
import com.spshop.admin.client.businessui.QueryService;
import com.spshop.model.QueryResult;
import com.spshop.model.QueryCriteria;
import com.spshop.model.Component;

public class QueryServiceImpl extends RemoteServiceServlet implements QueryService{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5751192707129312608L;

	public QueryResult<Component> greetServer(QueryCriteria criteria)
			throws IllegalArgumentException {
		return new QueryResult<Component>().mockImageData();
	}

}
