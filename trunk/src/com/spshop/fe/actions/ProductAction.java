package com.spshop.fe.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.cache.SCacheFacade;
import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Product;
import com.spshop.utils.AllConstants;

public class ProductAction extends BaseAction {

	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String[] uris = request.getRequestURI().split("/");
		String productName = uris[uris.length-1];
		Product product = SCacheFacade.getProduct(productName);
		if(product != null) {
			page.addPageProperty("productDetail", product);
			populatePathNodesForPage(product.getCategories().get(0), page.getPathNodes());
		}
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}
}
