package com.spshop.utils;
import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;

/**
 * ImageMagick和JMagick处理图片
 * 
 * @author sunlightcs 2011-6-1 http://hi.juziku.com/sunlightcs/
 */
public class ImageTools {

	public void cutImage(String sourcePath, String targetPath, int height,
			int width) throws MagickException {
		System.setProperty("jmagick.systemclassloader", "no");
		
		// reading image
		ImageInfo info = new ImageInfo(sourcePath);
		MagickImage image = new MagickImage(info);

		// resize image
		MagickImage scaleImg = image.scaleImage(height, width);

		// write image to file
		scaleImg.setFileName(targetPath);
		scaleImg.writeImage(info);
	}
	
	
}