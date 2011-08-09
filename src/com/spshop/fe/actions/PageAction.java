package com.spshop.fe.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.spshop.fe.formbeans.PageFormBean;
import com.spshop.utils.AllConstants;

public class PageAction extends BaseAction {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		PageFormBean page = (PageFormBean) form;
		
		
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
		
		populateMenuBar(page);
		
		populateSiteInfo(request, page);
		
		return mapping.findForward(AllConstants.SUCCESS_VALUE);
	}
	
}
