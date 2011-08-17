package com.spshop.service.intf;

import java.util.List;

import com.spshop.dao.intf.CategoryDAO;
import com.spshop.model.Category;

public interface CategoryService extends BaseService<Category,CategoryDAO, Long>{
	List<Category> getTopCategories();

	Category saveCategory(Category category);

	public Category getCategoryByName(String name);
}
