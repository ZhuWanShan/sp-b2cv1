package com.spshop.service.impl;

import java.io.IOException;

import magick.MagickException;

import com.spshop.admin.shared.LoginInfo;
import com.spshop.dao.intf.ImageDAO;
import com.spshop.model.Image;
import com.spshop.service.AbstractService;
import com.spshop.service.intf.ImageService;
import com.spshop.utils.ImageTools;

public class ImageServiceImpl extends AbstractService<Image,ImageDAO, Long> implements ImageService{
	
	
	
	@Override
	public Image saveImage(Image image,String imagePath,LoginInfo info) {
		Image img = image;
		
		try {
			img = ImageTools.changeSize(image,info,imagePath);
		} catch (MagickException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		save(image);
		return img.clone();
	}

	@Override
	public Image getImageById(long id) {
		Image image = fetchById(id);
		return image.clone();
	}
	
}
