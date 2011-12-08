package com.spshop.fe.actions;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Category;
import com.spshop.model.Order;
import com.spshop.model.Site;
import com.spshop.model.cart.ShoppingCart;
import com.spshop.model.enums.OrderStatus;

public abstract class BaseAction extends Action {
	public static final String SHOPPINGCART = "shoppingcart";
	/**
	 * Populate Site Informations for page
	 * 
	 * @param request
	 * @param page
	 */
	private void populateSiteInfo(HttpServletRequest request, PageFormBean page) {
		Site site = SCacheFacade.getSite();
		page.setSite(site);
	}
	
	void populateCategoryForCategoryPage(String categoryName, PageFormBean page) {
		List<Category> categories = SCacheFacade.getTopCategories();
		
		page.setCategory(searchCategory(categories, categoryName));
	}
	
    void populatePathNodesForPage(Category category, List<Category> pathNodes) {
        while (category.getParent() != null) {
            populatePathNodesForPage(category.getParent(), pathNodes);
            break;
        }
        pathNodes.add(category);
    }
	
	public ShoppingCart getCart(HttpServletRequest request){
		ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute(SHOPPINGCART);
		
		if(null==shoppingCart){
			Order order = new Order();
			order.setCreateDate(new Date());
			shoppingCart = new ShoppingCart(order);
			order.setStatus(OrderStatus.ONSHOPPING.getValue());
			order.setName(getOrderId());
			order.setCurrency("USD");
			request.getSession().setAttribute(SHOPPINGCART, shoppingCart);
		}
		
		return shoppingCart;
	}
	
	/**
	 * Find category from list in cache
	 * 
	 * @param categories
	 *            The target list for finding
	 * @param catName
	 *            The category name
	 * @return Searching result
	 */
	private Category searchCategory(List<Category> categories, String catName) {
		Category result = null;
		
		for (Category category : categories) {
			if (category.getName().equals(catName)) {
				result = category;
				break;
			} else if (category.getSubCategories().size() != 0){
				result = searchCategory(category.getSubCategories(), catName);
				if (result != null)
				break;
			}
		}
		
		return result;
	}
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		PageFormBean page = (PageFormBean) form;
		populateSiteInfo(request, page);
		ActionForward forward = null;
		
		dealURL(request, response, page.getSite().getDomain());
		
		try {
			forward = processer(mapping, page, request, response);
		} catch (Exception e) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			e.printStackTrace();
		}
		return forward;
	}
	
	/**
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public abstract ActionForward processer(ActionMapping mapping, PageFormBean page, HttpServletRequest request, HttpServletResponse response) throws Exception;

	
	protected String getOrderId(){
		String id = "Order";
		id = id + new Random().nextInt(999999);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + (char)(new Random().nextInt(24)+65);
		id = id + new Random().nextInt(999999);
		
		return id;
	}
	
	 protected String retrieveCMDURL(HttpServletRequest request){
	    	String uri = request.getRequestURI();
	    	if(uri.indexOf("cmd/")!=-1){
	    		uri = uri.substring(uri.indexOf("cmd/")+"cmd/".length());
	    	}
	    	return uri;
	 }
	 
	 private void dealURL( HttpServletRequest request, HttpServletResponse response, String domain) throws IOException{
		 
		 String noPrefixDomain = domain.replaceFirst("(?i)(^http://)(www\\.)*", "");
		 String url = request.getRequestURL().toString();
		 if(url.matches(noPrefixDomain)){
			 response.sendRedirect(domain);
		 }
	 }
	 
	 public static void main(String[] args) {
		System.out.println("http://www.google.com".replaceFirst("(?i)(^http://)(www\\.)*", ""));
		System.out.println("http://google.com".replaceFirst("(?i)(^http://)(www\\.)*", ""));
	}
}
