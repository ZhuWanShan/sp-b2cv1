package com.spshop.fe.formbeans;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts.action.ActionForm;

import com.spshop.model.Category;

public class PageFormBean extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2133777280292635270L;
	
	private List<Category> categories = new ArrayList<Category>();

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public void addAllCategories(List<Category> categories) {
		this.categories.clear();
		this.categories.addAll(categories);
	}

	public Category getCategoryByIndex(int index) {
		return categories.get(index);
	}
	
	

}
