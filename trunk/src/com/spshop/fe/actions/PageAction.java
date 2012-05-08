package com.spshop.fe.actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Category;
import com.spshop.model.Product;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.CategoryService;
import com.spshop.service.intf.ProductService;
import com.spshop.utils.Constants;

public class PageAction extends BaseAction {
	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] uris = request.getRequestURI().split(Constants.URL_SEPERATOR);
		List<Category> pathNodes = new ArrayList<Category>();
		
		if (uris.length != 0) {
			if (Constants.CATEGORY_URL.equals(uris[1])) {
			    String current = request.getParameter(Constants.PAGE_NUM);
			    Integer pageSize = 36;
			    Integer pageNum = 1;
			    
			    if (current != null && !"".equals(current)) {
                    pageNum = Integer.valueOf(current);
                }
			    
			    populateCategoryForCategoryPage(uris[2], page);
			    if(page.getCategory() == null) {
			        Category category = ServiceFactory.getService(CategoryService.class).getCategoryByName(uris[2]);
			        page.setCategory(category);
			    }
			    if (page.getCategory().isDisplayMarketOnly()) {
		            return mapping.findForward(Constants.SPECIAL_CATEGORY_VALUE);
                }
			    populatePathNodesForPage(page.getCategory(), pathNodes);
				populateProductsByCategory(page, pageSize * (pageNum - 1) + 1, pageSize);
				
				if(page.getPageProperties().get(Constants.PROD_IN_CATEGORY_PAGE) != null){
				    List<Product> tempProds = (ArrayList<Product>) page.getPageProperties().get(Constants.PROD_IN_CATEGORY_PAGE);
				    Long count = ServiceFactory.getService(ProductService.class).queryCountByCategory(page.getCategory());
				    List<Integer> pageIndexes = new ArrayList<Integer>();
				    for (int i = 1; i <= (count-1)/24+1; i++) {
                        pageIndexes.add(i);
                    }
				    
				    request.setAttribute(Constants.PAGE_INDEX, pageIndexes);
				    request.setAttribute(Constants.PROD_COUNT, count);
    				request.setAttribute(Constants.START_INDEX, pageSize * (pageNum - 1) + 1);
    				request.setAttribute(Constants.END_INDEX, pageSize * (pageNum - 1) + tempProds.size());
    				request.setAttribute(Constants.PAGE_NUM, pageNum);
				}
			} else if (Constants.KEYWORDS_URL.equals(uris[0])) {
				// TODO Not implemented so far, for keywords page
			} else if (Constants.PRODUCT_URL.equals(uris[1])) {
				// TODO For other forward
			}
			
			page.setPathNodes(pathNodes);
		} else {
			populateCategoryForCategoryPage("home", page);
		}
		return mapping.findForward(Constants.SUCCESS_VALUE);
	}
	
	private void populateProductsByCategory(PageFormBean page, int startIndex, int pageSize) {
		List<Product> products = new ArrayList<Product>();
		List<String> productNames =SCacheFacade.getCategoryProductNames(page.getCategory(), startIndex-1, startIndex+pageSize-1);
		for (String name : productNames) {
			products.add(SCacheFacade.getProduct(name));
		}
		page.addPageProperty(Constants.PROD_IN_CATEGORY_PAGE, products);
	}

}
