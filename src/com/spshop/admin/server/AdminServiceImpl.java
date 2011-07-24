package com.spshop.admin.server;


import com.spshop.admin.client.businessui.AdminService;
import com.spshop.model.Component;
import com.spshop.model.QueryCriteria;
import com.spshop.model.QueryResult;

public class AdminServiceImpl extends RemoteService implements AdminService{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5751192707129312608L;

	public QueryResult<Component> query(QueryCriteria criteria)
			throws IllegalArgumentException {
		return new QueryResult<Component>().mockImageData();
	}
}
