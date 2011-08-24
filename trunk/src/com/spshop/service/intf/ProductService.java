package com.spshop.service.intf;

import java.util.List;

import com.spshop.dao.intf.ProductDAO;
import com.spshop.model.Category;
import com.spshop.model.Component;
import com.spshop.model.Product;
import com.spshop.model.query.QueryResult;

public interface ProductService extends BaseService<Product,ProductDAO, Long>{
	QueryResult<Component> queryByName(String name);

	Product saveProduct(Product product);
	
	List<Product> queryByCategory(Category category, int start, int end);
	
	Long queryCountByCategory(Category category);
}
