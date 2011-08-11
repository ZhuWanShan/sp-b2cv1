package com.spshop.fe.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.model.Component;
import com.spshop.model.Product;
import com.spshop.model.query.QueryResult;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.ProductService;
import com.spshop.utils.AllConstants;

public class ProductAction extends BaseAction {

	@Override
	public ActionForward processer(ActionMapping mapping, PageFormBean page,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String[] uris = request.getRequestURI().split("/");
		String productName = uris[uris.length-1];
		QueryResult<Component> qs = ServiceFactory.getService(ProductService.class).queryByName(productName);
		List<Product> list = qs.<Product>toSpecificResult();
		if(list != null && list.size() > 0) {
			Product product = list.get(0);
			page.addPageProperty("productDetail", product);
		}
		
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}
}
