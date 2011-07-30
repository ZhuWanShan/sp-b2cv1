package com.spshop.service.impl;

import java.util.List;

import com.spshop.dao.intf.CategoryDAO;

import com.spshop.model.Category;
import com.spshop.model.Component;
import com.spshop.model.query.QueryCriteria;
import com.spshop.model.query.QueryResult;

import com.spshop.service.AbstractService;

import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.service.intf.SiteService;

public class CategoryServiceImpl extends AbstractService<Category,CategoryDAO, Long> implements CategoryService{

	@Override
	public List<Category> getTopCategories() {
		QueryCriteria criteria = new QueryCriteria();
		criteria.setType(Category.class.getName());
		criteria.setStartIndex(0);
		criteria.setMaxResuilt(20);
		criteria.addProperty("parent", null);
		criteria.setOrderBy("id");
		criteria.setAsc(true);
		QueryResult<Component> qs = ServiceFactory.getService(SiteService.class).query(criteria);
		return qs.<Category>toSpecificResult();
	}

	@Override
	public Category saveCategory(Category category) {
		Category c = save(category);
		return c.clone();
	}

}
