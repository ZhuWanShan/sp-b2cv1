package com.spshop.fe.formbeans;

import java.util.ArrayList;
import java.util.List;

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
	 *  Site Path
	 */
	private String path;

	/**
	 * 	Products to be displayed
	 */
	private List<Product> products;
	
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

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	

}
