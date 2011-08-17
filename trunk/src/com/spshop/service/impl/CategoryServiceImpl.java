package com.spshop.service.impl;

import java.util.List;

import com.spshop.dao.intf.CategoryDAO;
import com.spshop.exception.ServiceValidateException;
import com.spshop.model.Category;
import com.spshop.model.Component;
import com.spshop.model.query.QueryCriteria;
import com.spshop.model.query.QueryResult;
import com.spshop.service.AbstractService;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.service.intf.SiteService;
import com.spshop.validator.CategoryValidator;

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
	public Category getCategoryByName(String name) {
		QueryCriteria criteria = new QueryCriteria();
		criteria.setType(Category.class.getName());
		criteria.setStartIndex(0);
		criteria.setMaxResuilt(20);
		criteria.addProperty("name", name);
		criteria.setOrderBy("id");
		criteria.setAsc(true);
		QueryResult<Component> qs = ServiceFactory.getService(SiteService.class).query(criteria);
		
		if(qs.getResult().size()<1){
			return null;
		}
		
		return qs.<Category>toSpecificResult().get(0);
	}
	
	@Override
	public Category saveCategory(Category category) {
		Category c=null;
		try {
			new CategoryValidator(category).validate();
			if(category.getId()<1){
				if(null!=getCategoryByName(category.getName())){
					throw new ServiceValidateException("Category Exist !!");
				}
			}
			if(category.getId()==1){
				category.setName("home");
				category.setDisplayName("Home");
				category.setUrl("/");
			}
			c = save(category);
		} catch (Exception e) {
			throw new ServiceValidateException(e.getMessage());
		}
		return c.clone();
	}

}
