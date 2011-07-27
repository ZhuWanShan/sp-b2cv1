package com.spshop.service.impl;

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
		int[][] sizes = ImageTools.getImageSize(img.getSizeType());
		
		try {
			img.setIconUrl(info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath), sizes[0][0],  sizes[0][1]));
			img.setLargerUrl(info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath), sizes[1][0],  sizes[1][1]));
			img.setThumbnailUrl((info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath), sizes[2][0],  sizes[2][1])));
			img.setSmallUrl((info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath), sizes[3][0],  sizes[3][1])));
			img.setLogoUrl((info.getSite().getImagePath()+"/"+ImageTools.changeSize(imagePath, ImageTools.getImagePath(imagePath), sizes[4][0],  sizes[4][1])));
			
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
