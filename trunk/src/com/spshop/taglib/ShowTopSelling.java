package com.spshop.taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import com.spshop.cache.SCacheManager;
import com.spshop.model.TabProduct;

public class ShowTopSelling extends TagSupport{
	
	/**
	 *
	 */
	private static final long serialVersionUID = -2585682872396456649L;
	private String var = "topSelling";
	private boolean forceUpdate=false;
	
	@Override
	public int doStartTag() throws JspException {
		
		TabProduct tabProduct = SCacheManager.getTopSelling(false);
		pageContext.setAttribute(var, tabProduct);
		return EVAL_BODY_INCLUDE;
	}
	
	public String getVar() {
		return var;
	}
	public void setVar(String var) {
		this.var = var;
	}
	public boolean isForceUpdate() {
		return forceUpdate;
	}
	public void setForceUpdate(boolean forceUpdate) {
		this.forceUpdate = forceUpdate;
	}
	
	@Override
	public void release() {
		super.release();
		 var = "topSelling";
		 forceUpdate=false;
	}
	
	
}
