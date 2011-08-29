package com.spshop.service.impl;

import java.util.ArrayList;
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
	public List<Category> getTopCategories(boolean includeDisable) {
		QueryCriteria criteria = new QueryCriteria();
		criteria.setType(Category.class.getName());
		criteria.setStartIndex(0);
		criteria.setMaxResult(20);
		criteria.addProperty("parent", null);
		criteria.setOrderBy("index");
		criteria.addProperty("displayMarketOnly", Boolean.FALSE);
		if(!includeDisable){
			criteria.addProperty("enable", Boolean.TRUE);
		}
		criteria.setAsc(true);
		QueryResult<Component> qs = ServiceFactory.getService(SiteService.class).query(criteria);
		
		if(!includeDisable){
			for(Category category : qs.<Category>toSpecificResult()){
				filterDisable(category);
			}
		}
		for(Category category : qs.<Category>toSpecificResult()){
			filterMartetOnly(category);
		}
		return qs.<Category>toSpecificResult();
	}
	
	private void filterDisable(Category category) {
		if(null!=category.getSubCategories()){
			List<Category> cDisabled = new ArrayList<Category>();
			for(Category c:category.getSubCategories()){
				if(!c.isEnable()){
					cDisabled.add(c);
				}
			}
			category.getSubCategories().removeAll(cDisabled);
			for(Category c:category.getSubCategories()){
				filterDisable(c);
			}
		}
	}
	
	private void filterMartetOnly(Category category) {
		if(null!=category.getSubCategories()){
			List<Category> marketOnly = new ArrayList<Category>();
			for(Category c:category.getSubCategories()){
				if(c.isDisplayMarketOnly()){
					marketOnly.add(c);
				}
			}
			category.getSubCategories().removeAll(marketOnly);
			for(Category c:category.getSubCategories()){
				filterMartetOnly(c);
			}
		}
	}

	@Override
	public List<Category> getTopCategories() {
		return getTopCategories(false);
	}
	
	@Override
	public Category getCategoryByName(String name) {
		QueryCriteria criteria = new QueryCriteria();
		criteria.setType(Category.class.getName());
		criteria.setStartIndex(0);
		criteria.setMaxResult(20);
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
				category.setEnable(true);
			}
			c = save(category);
		} catch (Exception e) {
			throw new ServiceValidateException(e.getMessage());
		}
		return c.clone();
	}

}
