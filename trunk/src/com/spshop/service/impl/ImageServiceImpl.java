package com.spshop.service.impl;

import magick.MagickException;

import com.spshop.admin.shared.ImageConstonts;
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
			img.setIconUrl(info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath), ImageConstonts.ICON_SIZE[0],  ImageConstonts.ICON_SIZE[1]));
			img.setLargerUrl(info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath), ImageConstonts.LARGE_SIZE[0],  ImageConstonts.LARGE_SIZE[1]));
			img.setThumbnailUrl((info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath), ImageConstonts.THUM_SIZE[0],  ImageConstonts.THUM_SIZE[1])));
			img.setSmallUrl((info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath),ImageConstonts.SMALL_SIZE[0],  ImageConstonts.SMALL_SIZE[1])));
			img.setLogoUrl((info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath), ImageConstonts.LOGO_SIZE[0],  ImageConstonts.LOGO_SIZE[1])));
			
		} catch (MagickException e) {
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
