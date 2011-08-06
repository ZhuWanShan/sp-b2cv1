package com.spshop.utils;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.io.File;

import com.spshop.admin.shared.ImageConstonts;
import com.spshop.admin.shared.LoginInfo;
import com.spshop.model.Image;

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

	static ImageInfo info = null;
	static MagickImage image = null;
	static Dimension imageDim = null;
	static MagickImage scaled = null;
	static double srcH;
	static double srcW;
	static double fullH;
	static double fullW;
	static String imagePath;
	static String toPath;

	public static Image changeSize(Image img, LoginInfo loginInfo,
			String filePath) throws MagickException {
		try {
			toPath = getImagePath(filePath);
			imagePath = filePath;
			info = new ImageInfo(filePath);
			image = new MagickImage(info);
			imageDim = image.getDimension();
			srcH = imageDim.width;
			srcW = imageDim.height;
			fullH = srcH;
			fullW = srcW;
			img.setIconUrl(loginInfo.getSite().getImagePath()
					+ "/"
					+ reSize(ImageConstonts.ICON_SIZE[0],
							ImageConstonts.ICON_SIZE[1]));
			img.setLargerUrl(loginInfo.getSite().getImagePath()
					+ "/"
					+ reSize(ImageConstonts.LARGE_SIZE[0],
							ImageConstonts.LARGE_SIZE[1]));
			img.setThumbnailUrl((loginInfo.getSite().getImagePath() + "/" + reSize(
					ImageConstonts.THUM_SIZE[0], ImageConstonts.THUM_SIZE[1])));
			img.setSmallUrl((loginInfo.getSite().getImagePath() + "/" + reSize(
					ImageConstonts.SMALL_SIZE[0], ImageConstonts.SMALL_SIZE[1])));
			img.setLogoUrl((loginInfo.getSite().getImagePath() + "/" + reSize(
					ImageConstonts.LOGO_SIZE[0], ImageConstonts.LOGO_SIZE[1])));
		} finally {
			if (scaled != null) {
				scaled.destroyImages();
			}
			System.gc();
		}
		return img;
	}

	private static String reSize(int height, int width) throws MagickException {
		if (srcH <= height && srcW <= width) {
			return getImageName(imagePath);
		}

		if (srcH * srcH / srcW > srcH * height / width) {
			fullH = srcW * height / width;
		} else {
			fullW = srcH * width / height;
		}

		scaled = image.chopImage(new Rectangle((int) fullH, (int) fullW,
				(int) (srcH - fullH) > 0 ? (int) (srcH - fullH) : 0,
				(int) (srcW - fullW) > 0 ? (int) (srcW - fullW) : 0));

		scaled = scaled.scaleImage(height, width);// 小图片文件的大小.
		scaled.setFileName(toPath + "/"
				+ getImageName(imagePath, height, width));
		scaled.writeImage(info);

		return getImageName(imagePath, height, width);
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

	public static String changeSize(String filePath, String toPath, int height,
			int width) throws MagickException {
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
				fullW = srcH * width / height;
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

}
