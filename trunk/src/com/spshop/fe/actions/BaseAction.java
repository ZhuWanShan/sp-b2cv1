package com.spshop.fe.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.Action;

import com.spshop.cache.CacheMap;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Category;
import com.spshop.model.Product;
import com.spshop.model.Site;
import com.spshop.utils.AllConstants;

public class BaseAction extends Action {
	public void populateMenuBar(PageFormBean page) {
		List<Category> categories = new ArrayList<Category>();
		categories = (List<Category>) CacheMap.getInstance().getCache(AllConstants.CATEGORY_CACHE);
		
		page.addAllCategories(categories);
	}
	
	public void populateProductsByCategory(PageFormBean page) {
		List<Product> products = new ArrayList<Product>();
		//products = ServiceFactory.getService(ProductService.class).findPageByPage(0, 24);
		
		//Mockup data
		for (int i = 0; i < 24; i++) {
			Product product = new Product();
			product.setName("Product - " + i);
			product.setTitle("Pro - Title - " + i);
			products.add(product);
			//product.setImages(images);
		}
		
		page.setCatProducts(products);
	}
	
	public void populateSiteInfo(HttpServletRequest request, PageFormBean page) {
		//Mockup data
		Site site = new Site();
		site.setDomain(request.getServerName() + ":8080");
		page.setSite(site);
	}
	
	public void populateCategoryForCategoryPage(String categoryName, PageFormBean page) {
		List<Category> categories = (List<Category>) CacheMap.getInstance().getCache(AllConstants.CATEGORY_CACHE);
		
		page.setCategory(searchCategory(categories, categoryName));
	}
	
	public Category searchCategory(List<Category> categories, String catName) {
		Category result = null;
		
		for (Category category : categories) {
			if (category.getName().equals(catName)) {
				result = category;
				break;
			} else if (category.getSubCategories().size() != 0){
				result = searchCategory(category.getSubCategories(), catName);
				break;
			}
		}
		
		return result;
	}
}
