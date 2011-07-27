package com.spshop.admin.server;


import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.spshop.admin.client.businessui.AdminService;
import com.spshop.model.Category;
import com.spshop.model.Component;
import com.spshop.model.Image;
import com.spshop.model.QueryCriteria;
import com.spshop.model.QueryResult;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.ImageService;
import com.spshop.service.intf.SiteService;
@SuppressWarnings("rawtypes")
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
		Category c1 = new Category();
		c1.setName("A");
		c1.setDisplayName("A Category");
		c1.setId(1);
		
		Category c2 = new Category();
		c2.setName("B");
		c2.setDisplayName("B Category");
		c2.setParent(c1);
		List<Category> cs1 = new ArrayList<Category>();
		cs1.add(c2);
		
		Category c3 = new Category();
		c3.setName("C");
		c3.setDisplayName("C Category");
		c3.setParent(c2);
		List<Category> cs2 = new ArrayList<Category>();
		cs2.add(c3);
		c2.setSubCategories(cs2);
		
		
		c1.setSubCategories(cs1);
		
		List<Category> rs = new ArrayList<Category>();
		
		c2.setId(2);
		c3.setId(3);
		
		rs.add(c1);
		
		return rs;
	}

	@Override
	public Category saveCategory(Category category) {
		category.setId(new Random().nextLong());
		return category;
	}

	@Override
	public Image getImageById(long id) {
		Image image = ServiceFactory.getService(ImageService.class).getImageById(id);
		return image;
	}
}
