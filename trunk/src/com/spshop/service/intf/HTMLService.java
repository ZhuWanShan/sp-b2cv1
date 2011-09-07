package com.spshop.service.intf;

import com.spshop.dao.intf.HTMLDAO;
import com.spshop.model.HTML;

public interface HTMLService extends BaseService<HTML, HTMLDAO, Long>{
	HTML saveHTML(HTML html);
}
