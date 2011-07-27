package com.spshop.utils;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.io.File;

import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;

/**
 * ImageMagick和JMagick处理图片
 * 
 */
public class ImageTools {

	static {
		System.setProperty("jmagick.systemclassloader", "no");
	}

	public static String changeSize(String filePath, String toPath,
			int height,int width) throws MagickException {
		ImageInfo info = null;
		MagickImage image = null;
		Dimension imageDim = null;
		MagickImage scaled = null;
		try {
			info = new ImageInfo(filePath);
			image = new MagickImage(info);
			imageDim = image.getDimension();
			double srcH = imageDim.width;
			double srcW = imageDim.height;
			double fullH = srcH;
			double fullW = srcW;
			if (srcH <= height && srcW <= width) {
				return getImageName(filePath);
			}

			if (srcH * srcH / srcW > srcH * height / width) {
				fullH = srcW * height / width;
			} else {
				fullW = srcH *  width/ height;
			}

			scaled = image.chopImage(new Rectangle((int) fullH, (int) fullW,
					(int) (srcH - fullH) > 0 ? (int) (srcH - fullH) : 0,
					(int) (srcW - fullW) > 0 ? (int) (srcW - fullW) : 0));

			scaled = scaled.scaleImage(height, width);// 小图片文件的大小.
			scaled.setFileName(toPath + "/"
					+ getImageName(filePath, height, width));
			scaled.writeImage(info);

			return getImageName(filePath, height, width);
		} finally {
			if (scaled != null) {
				scaled.destroyImages();
			}
		}
	}

	private static String getImageName(String imagePath, int hight, int width) {

		String[] images = imagePath.split("[\\\\|/]");
		String name = images[images.length - 1];
		String[] names = name.split("\\.");
		if (hight < 1 || width < 1) {
			return name;
		}
		return names[0] + "_" + width + "X" + hight + "."
				+ names[names.length - 1];
	}

	private static String getImageName(String imagePath) {
		return getImageName(imagePath, -1, -1);
	}

	public static String getImagePath(String imagePath) {
		File file = new File(imagePath).getParentFile();
		return file.getAbsolutePath();
	}

}
