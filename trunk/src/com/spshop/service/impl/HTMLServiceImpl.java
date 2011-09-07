package com.spshop.service.impl;

import com.spshop.dao.intf.HTMLDAO;
import com.spshop.model.HTML;
import com.spshop.service.AbstractService;
import com.spshop.service.intf.HTMLService;
import com.spshop.validator.HTMLValidator;

public class HTMLServiceImpl extends AbstractService<HTML, HTMLDAO, Long> implements HTMLService{

	@Override
	public HTML saveHTML(HTML html) {
		new HTMLValidator(html).validate();
		return save(html).clone();
	}
	
}
