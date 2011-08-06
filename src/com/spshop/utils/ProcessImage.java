package com.spshop.utils;

import java.util.Date;

import com.spshop.admin.server.ImageBatchProcessor;
import com.spshop.admin.shared.LoginInfo;
import com.spshop.model.Image;
import com.spshop.service.factory.ServiceFactory;
import com.spshop.service.intf.ImageService;

/**
 * author Delgado
 */
public class ProcessImage implements Runnable {

	public void run() {
		LoginInfo loginInfo = ImageBatchProcessor.loginInfo;
		String fileNameAndPath = Thread.currentThread().getName();
		String fileName = fileNameAndPath.substring(0,
				fileNameAndPath.indexOf("__"));
		String path = fileNameAndPath.substring(fileNameAndPath.indexOf("__")+2,
				fileNameAndPath.length());
		ImageService imageService = ServiceFactory
				.getService(ImageService.class);
		Image image = new Image();
		image.setSite(loginInfo.getSite());
		image.setCreateDate(new Date());
		image.setUpdateDate(new Date());
		image.setAltTitle(loginInfo.getSite().getImagePath() + "/" + fileName);
		image.setName(loginInfo.getSite().getImagePath() + "/" + fileName);
		image.setNoChangeUrl(loginInfo.getSite().getImagePath() + "/"
				+ fileName);

		imageService.saveImage(image, path, loginInfo);
	}
}
