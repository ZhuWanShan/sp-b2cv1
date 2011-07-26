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
import com.spshop.utils.AllConstants;

public class PageAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		PageFormBean formBean = (PageFormBean) form;
		
		
		//Mock data
		List<Category> categories = new ArrayList<Category>();
		for (int i = 0; i < 6; i++) {
			Category category = new Category();
			category.setDisplayName("Category-" + i);
			for (int j = 0; j < 10; j++) {
				Category subCategory = new Category();
				subCategory.setDisplayName("subCategory-" + j);
				category.getSubCategories().add(subCategory);
			}
			categories.add(category);
		}
		
		formBean.addAllCategories(categories);
		
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}
}
