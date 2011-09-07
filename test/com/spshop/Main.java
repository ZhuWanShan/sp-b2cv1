package com.spshop;

import java.util.Date;

import magick.MagickException;

import com.spshop.model.HTML;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.HTMLService;

public class Main {
	public static void main(String[] args) throws MagickException {
		
		HTML html = new HTML();
		
		html.setContent("asdas");
		html.setCreateDate(new Date());
		
		ServiceFactory.getService(HTMLService.class).save(html);
	}
}
