package com.spshop.fe.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Category;
import com.spshop.model.Product;
import com.spshop.model.Site;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.service.intf.ProductService;
import com.spshop.utils.AllConstants;

public class PageAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		PageFormBean page = (PageFormBean) form;
		
		
		String[] uris = request.getRequestURI().split("/");
		
		if (uris.length != 0) {
			if (AllConstants.CATEGORY_URL.equals(uris[0])) {
				String secPath = request.getParameter(AllConstants.SECOND_PATH);
				page.setPath("Home" + ">" + secPath);
			} else if (AllConstants.KEYWORDS_URL.equals(uris[0])) {
				// TODO Not implemented so far
			} else {
				// TODO Other forward
			}
		}
		
		populateMenuBar(page);
		populateProductsByCategory(page);
		populateSiteInfo(request, page);
		
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}
	
	private void populateMenuBar(PageFormBean page) {
		List<Category> categories = new ArrayList<Category>();
		categories = ServiceFactory.getService(CategoryService.class).getTopCategories();
		
		page.addAllCategories(categories);
	}
	
	private void populateProductsByCategory(PageFormBean page) {
		List<Product> products = new ArrayList<Product>();
//		products = ServiceFactory.getService(ProductService.class).findPageByPage(0, 24);
		
		//Mockup data
		for (int i = 0; i < 24; i++) {
			Product product = new Product();
//			product.setImages(images);
			
		}
		
		page.setProducts(products);
	}
	
	private void populateSiteInfo(HttpServletRequest request, PageFormBean page) {
		//Mockup data
		Site site = new Site();
		site.setDomain(request.getServerName() + "8080");
		page.setSite(site);
	}
}
