package com.spshop.fe.actions;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.servlet.http.Cookie;
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
import com.spshop.model.User;
import com.spshop.model.cart.ShoppingCart;
import com.spshop.model.enums.OrderStatus;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.OrderService;
import com.spshop.utils.AllConstants;

public abstract class BaseAction extends Action {
	public static final String SHOPPINGCART = "shoppingcart";
	protected Map<String, Float> currency = new HashMap<String, Float>();
	private void initCurrency(HttpServletRequest request){
		Properties cp = new Properties();
		try {
			cp.load(this.getClass().getResourceAsStream("/currency.properties"));
			for (Object currencyName : cp.keySet()) {
				try {
					float rate = Float.parseFloat(cp.get(currencyName).toString());
					currency.put(currencyName.toString(), rate);
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(null == currency.get("USD")){
			currency.put("USD", 1.0f);
		}
		request.getSession().getServletContext().setAttribute("currencies", currency);
	}
	
	
	protected String getCurrencyName(HttpServletRequest request){
		String name = null;
		name = (String) request.getSession().getAttribute("currency");
		
		if(null == name){
			name = "USD";
		}
		return name;
	}
	
	protected Map<String,Float> getCurrencies(HttpServletRequest request){
		return (Map<String, Float>) request.getSession().getServletContext().getAttribute("currencies");
	}
	
	protected void setCurrencyName(String name, HttpServletRequest request){
		
		if(null != getCurrencies(request).get(name)){
			request.getSession().setAttribute("currency", name);
		}else{
			request.getSession().setAttribute("currency", "USD");
		}
		ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute(SHOPPINGCART);
		if(null!=shoppingCart && null!=shoppingCart.getOrder()){
			shoppingCart.getOrder().setCurrency(name);
		}
	}
	
	protected void handleCurrency(HttpServletRequest request){
		String currency = request.getParameter("currency");
		if(null != currency){
			setCurrencyName(currency, request);
		}
		if(null == request.getSession().getAttribute("currency") || ((Float)request.getSession().getAttribute("currency"))<1){
			request.getSession().setAttribute("currency", "USD");
		}
	}
	
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
    
	
	public ShoppingCart getCart(HttpServletRequest request, HttpServletResponse response){
		
		ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute(SHOPPINGCART);
		if(null==shoppingCart){
			shoppingCart = new ShoppingCart(new Order());
			Cookie[] cookies = request.getCookies();
			if(null!=cookies&&cookies.length>0){
				for (int i = 0; i < cookies.length; i++) {
					if("cartId".equals(cookies[i].getName())){
						Order order = ServiceFactory.getService(OrderService.class).getCartById(cookies[i].getValue());
						if(null==order){
							order = new Order();
							order.setCreateDate(new Date());
							shoppingCart = new ShoppingCart(order);
							order.setStatus(OrderStatus.ONSHOPPING.getValue());
							order.setName(getOrderId());
							order.setCurrency(getCurrencyName(request));
							shoppingCart.setOrder(order);
						}
						shoppingCart = new ShoppingCart(order);
					}
				}
			}
		}
		if(shoppingCart.getOrder().getId()>0){
			Cookie cookie = new Cookie("cartId", ""+shoppingCart.getOrder().getId());
			cookie.setMaxAge(99999999);
			response.addCookie(cookie);
		}
		
		 User user = (User)request.getSession().getAttribute(AllConstants.USER_INFO);
		
		 if(null != user){
			 Order order2 = shoppingCart.getOrder();
			 order2.setUser(user);
			 order2.setCity(user.getCity());
			 order2.setCustomerName(user.getFirstName()+","+user.getLastName());
			 order2.setCustomerAddress(user.getAddress());
			 order2.setCustomerZipcode(user.getZipcode());
			 order2.setDeliverPhone(user.getTelephone());
			 order2.setCustomerEmail(user.getEmail());
			 order2.setBcustomGender(user.getGender());
		 }
		 
		 setCurrencyName(shoppingCart.getOrder().getCurrency(), request);
		 
		request.getSession().setAttribute(SHOPPINGCART, shoppingCart);
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
		
		if(dealURL(request, response, page.getSite().getDomain())){
			return null;
		};
		if(null ==getCurrencies(request) ||getCurrencies(request).isEmpty()){
			initCurrency(request);
		}
		handleCurrency(request);
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
	 
	 private boolean dealURL( HttpServletRequest request, HttpServletResponse response, String domain) throws IOException{
		 String url = request.getRequestURL().toString();
		 if(url.matches("(?i)(^http://honeybuy.com)(.*)")){
			 url = url.replaceAll("(?i)(^http://)", "http://www.");
			 if(null != request.getQueryString()){
				 url = url + "?" + request.getQueryString();
			 }
			 response.sendRedirect(url);
			 return true;
		 }
		 return false;
		/* String noPrefixDomain = domain.replaceFirst("(?i)(^http://)*(www\\.)*", "");
		 String url = request.getRequestURL().toString();
		 if(url.endsWith(noPrefixDomain)){
			 response.setStatus(301);
			 response.sendRedirect("http://"+domain);
		 }*/
	 }
	 
	 public static void main(String[] args) {
		System.out.println("http://www.google.com".replaceFirst("(?i)(^http://)(www\\.)*", ""));
		System.out.println("http://google.com".replaceFirst("(?i)(^http://)(www\\.)*", ""));
	}
}
