package com.spshop.fe.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Product;
import com.spshop.utils.AllConstants;

public class PageAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] uris = request.getRequestURI().split(AllConstants.URL_SEPERATOR);
		
		if (uris.length != 0) {
			if (AllConstants.CATEGORY_URL.equals(uris[1])) {
				// TODO Not implemented so far, for category page
				populateProductsByCategory(page);
				populateCategoryForCategoryPage(uris[2], page);
			} else if (AllConstants.KEYWORDS_URL.equals(uris[0])) {
				// TODO Not implemented so far, for keywords page
			} else {
				// TODO Other forward
			}
		}

		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}
	
	private void populateProductsByCategory(PageFormBean page) {
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

}
