package com.spshop.admin.server;


import java.util.List;

import com.spshop.admin.client.businessui.service.AdminService;
import com.spshop.model.Category;
import com.spshop.model.Component;
import com.spshop.model.Image;
import com.spshop.model.QueryCriteria;
import com.spshop.model.QueryResult;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.service.intf.ImageService;
import com.spshop.service.intf.SiteService;
public class AdminServiceImpl extends RemoteService implements AdminService{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5751192707129312608L;

	public QueryResult<Component> query(QueryCriteria criteria)
			throws IllegalArgumentException {
		return ServiceFactory.getService(SiteService.class).query(criteria);
	}

	@Override
	public List<Category> getAllCategory() {
		return ServiceFactory.getService(CategoryService.class).getTopCategories();
	}

	@Override
	public Category saveCategory(Category category) {
		return ServiceFactory.getService(CategoryService.class).saveCategory(category);
	}

	@Override
	public Image getImageById(long id) {
		Image image = ServiceFactory.getService(ImageService.class).getImageById(id);
		return image;
	}
}
