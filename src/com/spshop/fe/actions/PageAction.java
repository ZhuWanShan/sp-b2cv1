package com.spshop.fe.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Category;
import com.spshop.model.Product;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.service.intf.ProductService;
import com.spshop.utils.AllConstants;

public class PageAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] uris = request.getRequestURI().split(AllConstants.URL_SEPERATOR);
		List<Category> pathNodes = new ArrayList<Category>();
		
		if (uris.length != 0) {
			if (AllConstants.CATEGORY_URL.equals(uris[1])) {
			    String current = request.getParameter(AllConstants.PAGE_NUM);
			    Integer pageSize = 12;
			    Integer pageNum = 1;
			    
			    if (current != null && !"".equals(current)) {
                    pageNum = Integer.valueOf(current);
                }
			    
			    populateCategoryForCategoryPage(uris[2], page);
			    if(page.getCategory() == null) {
			        Category category = ServiceFactory.getService(CategoryService.class).getCategoryByName(uris[2]);
			        if (category.isDisplayMarketOnly()) {
			            page.setCategory(category);
			            return mapping.findForward(AllConstants.SPECIAL_CATEGORY_VALUE);
                    }
			    }
			    populatePathNodesForPage(page.getCategory(), pathNodes);
				populateProductsByCategory(page, pageSize * (pageNum - 1) + 1, pageSize);
				
				if(page.getPageProperties().get(AllConstants.PROD_IN_CATEGORY_PAGE) != null){
				    List<Product> tempProds = (ArrayList<Product>) page.getPageProperties().get(AllConstants.PROD_IN_CATEGORY_PAGE);
				    Long count = ServiceFactory.getService(ProductService.class).queryCountByCategory(page.getCategory());
				    
				    request.setAttribute(AllConstants.PROD_COUNT, count);
    				request.setAttribute(AllConstants.START_INDEX, pageSize * (pageNum - 1) + 1);
    				request.setAttribute(AllConstants.END_INDEX, pageSize * (pageNum - 1) + tempProds.size());
    				request.setAttribute(AllConstants.PAGE_NUM, pageNum);
				}
			} else if (AllConstants.KEYWORDS_URL.equals(uris[0])) {
				// TODO Not implemented so far, for keywords page
			} else if (AllConstants.PRODUCT_URL.equals(uris[1])) {
				// TODO For other forward
			}
			
			page.setPathNodes(pathNodes);
		} else {
			populateCategoryForCategoryPage("home", page);
		}

		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}
	
	private void populateProductsByCategory(PageFormBean page, int startIndex, int pageSize) {
		List<Product> products = new ArrayList<Product>();
		products = ServiceFactory.getService(ProductService.class).queryByCategory(page.getCategory(), startIndex, pageSize);
		
		page.addPageProperty(AllConstants.PROD_IN_CATEGORY_PAGE, products);
	}

}
