package com.spshop.service.impl;

import com.spshop.dao.intf.ProductDAO;
import com.spshop.exception.ServiceValidateException;
import com.spshop.model.Component;
import com.spshop.model.Product;
import com.spshop.model.query.QueryCriteria;
import com.spshop.model.query.QueryResult;
import com.spshop.service.AbstractService;
import com.spshop.service.intf.ProductService;
import com.spshop.validator.ProductValidator;

public class ProductServiceImpl extends AbstractService<Product,ProductDAO, Long> implements ProductService{

	
	@Override
	public QueryResult<Component> queryByName(String name) {
		QueryCriteria criteria = new QueryCriteria();
		criteria.setType(Product.class.getName());
		criteria.setStartIndex(0);
		criteria.setMaxResult(20);
		criteria.setKey(name);
		criteria.setOrderBy("id");
		criteria.setAsc(true);
		QueryResult<Component> qs = getDao().queryByHQL(criteria);
		return qs.clone();
	}

	@Override
	public Product saveProduct(Product product) {
		new ProductValidator(product).validate();
		if(product.getId()<1&&!queryByName(product.getName()).getResult().isEmpty()){
			throw new ServiceValidateException(product.getName()+" is already exist!");
		}
		
		getDao().save(product);
		
		return product.clone();
	}
}
