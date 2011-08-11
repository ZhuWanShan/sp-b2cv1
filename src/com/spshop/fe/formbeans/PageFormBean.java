package com.spshop.fe.formbeans;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts.action.ActionForm;

import com.spshop.model.Category;
import com.spshop.model.Product;
import com.spshop.model.Site;

public class PageFormBean extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2133777280292635270L;
	
	/**
	 *  Menu bar content
	 */
	private List<Category> menubar = new ArrayList<Category>();
	
	/**
	 *  Site Informations
	 */
	private Site site;
	
	/**
	 * 	Products to be displayed
	 */
	private List<Product> catProducts;
	
	private Category category;
	
	private Map<String, Object> pageProperties = new HashMap<String, Object>();
	
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Category> getCategories() {
		return menubar;
	}

	public void setCategories(List<Category> categories) {
		this.menubar = categories;
	}

	public void addAllCategories(List<Category> categories) {
		this.menubar.clear();
		this.menubar.addAll(categories);
	}

	public Category getCategoryByIndex(int index) {
		return menubar.get(index);
	}

	public void setSite(Site site) {
		this.site = site;
	}

	public Site getSite() {
		return site;
	}

	public void setPageProperties(Map<String, Object> pageProperties) {
		this.pageProperties = pageProperties;
	}

	public Map<String, Object> getPageProperties() {
		return pageProperties;
	}
	
	public synchronized void addPageProperty (String key, Object object) {
		this.pageProperties.put(key, object);
	}
	
	

}
