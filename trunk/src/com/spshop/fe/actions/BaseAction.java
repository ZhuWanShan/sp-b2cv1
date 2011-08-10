package com.spshop.fe.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.CacheMap;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Category;
import com.spshop.model.Product;
import com.spshop.model.Site;
import com.spshop.utils.AllConstants;

public abstract class BaseAction extends Action {
	
	private PageFormBean page;
	private String[] uris;
	
	
	/**
	 * Populate MenuBar data for page
	 * 
	 * @param page
	 */
	private void populateMenuBar(PageFormBean page) {
		List<Category> categories = new ArrayList<Category>();
		categories = (List<Category>) CacheMap.getInstance().getCache(AllConstants.CATEGORY_CACHE);
		
		page.addAllCategories(categories);
	}

	/**
	 * Populate Site Informations for page
	 * 
	 * @param request
	 * @param page
	 */
	private void populateSiteInfo(HttpServletRequest request, PageFormBean page) {
		//Mockup data
		Site site = new Site();
		site.setDomain(request.getServerName() + ":8080");
		page.setSite(site);
	}
	
	public void populateCategoryForCategoryPage(String categoryName, PageFormBean page) {
		List<Category> categories = (List<Category>) CacheMap.getInstance().getCache(AllConstants.CATEGORY_CACHE);
		
		page.setCategory(searchCategory(categories, categoryName));
	}
	
	private Category searchCategory(List<Category> categories, String catName) {
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
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		setPage((PageFormBean) form);
		uris = request.getRequestURI().split(AllConstants.URL_SEPERATOR);
		populateMenuBar(getPage());
		populateSiteInfo(request, getPage());
		
		return processer(mapping, form, request, response);
	}
	
	/**
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public abstract ActionForward processer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception;

	public void setPage(PageFormBean page) {
		this.page = page;
	}

	public PageFormBean getPage() {
		return page;
	}
	
	public String[] getUris() {
		return uris;
	}

	public void setUris(String[] uris) {
		this.uris = uris;
	}

}
