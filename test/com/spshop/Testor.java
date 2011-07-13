package com.spshop;

import com.spshop.model.FeedBack;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.FeedBackService;

public class Testor{
	public static void main(String[] args) {
		FeedBackService service = ServiceFactory.getService(FeedBackService.class);
		FeedBack feedBack = new FeedBack();
		feedBack.setContent("asdasdasd");
		service.save(feedBack);
	}
}
