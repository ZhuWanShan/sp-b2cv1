package com.spshop.utils;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;

import com.spshop.admin.shared.ImageConstonts;
import com.spshop.admin.shared.LoginInfo;
import com.spshop.model.Image;

public class ImageTools {
	
	
	private final static String  COVERTPAHT="C:\\Program Files\\ImageMagick-5.5.7-Q8";
	
	/*
	 * static { System.setProperty("jmagick.systemclassloader", "no"); }
	 */

	/*
	 * static ImageInfo info = null; static MagickImage image = null; static
	 * Dimension imageDim = null; static MagickImage scaled = null; static
	 * double srcH; static double srcW; static double fullH; static double
	 * fullW; static String imagePath; static String toPath;
	 */

	public static Image changeSize(Image img, LoginInfo loginInfo,
			String filePath) throws MagickException, IOException {
		try {
			/*
			 * ; imagePath = filePath; info = new ImageInfo(filePath); image =
			 * new MagickImage(info); imageDim = image.getDimension(); srcH =
			 * imageDim.width; srcW = imageDim.height; fullH = srcH; fullW =
			 * srcW;
			 */
			img.setIconUrl(loginInfo.getSite().getImagePath()
					+ "/"
					+ reSize(ImageConstonts.ICON_SIZE[0],
							ImageConstonts.ICON_SIZE[1], filePath));
			img.setLargerUrl(loginInfo.getSite().getImagePath()
					+ "/"
					+ reSize(ImageConstonts.LARGE_SIZE[0],
							ImageConstonts.LARGE_SIZE[1], filePath));
			img.setThumbnailUrl((loginInfo.getSite().getImagePath() + "/" + reSize(
					ImageConstonts.THUM_SIZE[0], ImageConstonts.THUM_SIZE[1],
					filePath)));
			img.setSmallUrl((loginInfo.getSite().getImagePath() + "/" + reSize(
					ImageConstonts.SMALL_SIZE[0], ImageConstonts.SMALL_SIZE[1],
					filePath)));
			img.setLogoUrl((loginInfo.getSite().getImagePath() + "/" + reSize(
					ImageConstonts.LOGO_SIZE[0], ImageConstonts.LOGO_SIZE[1],
					filePath)));
		} finally {
			/*
			 * if (scaled != null) { scaled.destroyImages(); }
			 */
			System.gc();
		}
		return img;
	}

	private static String reSize( int width,int height, String filePath)
			throws MagickException, IOException {
		/*
		 * if (srcH <= height && srcW <= width) { return
		 * getImageName(imagePath); }
		 * 
		 * if (srcH * srcH / srcW > srcH * height / width) { fullH = srcW *
		 * height / width; } else { fullW = srcH * width / height; }
		 * 
		 * scaled = image.chopImage(new Rectangle((int) fullH, (int) fullW,
		 * (int) (srcH - fullH) > 0 ? (int) (srcH - fullH) : 0, (int) (srcW -
		 * fullW) > 0 ? (int) (srcW - fullW) : 0));
		 * 
		 * scaled = scaled.scaleImage(height, width);// 小图片文件的大小.
		 * scaled.setFileName(toPath + "/" + getImageName(imagePath, height,
		 * width)); scaled.writeImage(info);
		 */

		String toPath = getImagePath(filePath);

		java.io.File file = new java.io.File(filePath);

		java.awt.image.BufferedImage bi = javax.imageio.ImageIO.read(file);

		int srcH = bi.getHeight();
		int srcW = bi.getWidth();

		int fullH = srcH;
		int fullW = srcW;

		if (srcH * srcH / srcW > srcH * height / width) {
			fullH = srcW * height / width;
		} else {
			fullW = srcH * width / height;
		}
		
		Runtime runtime = Runtime.getRuntime();
		
		String tempPath = toPath + "\\"+ getImageName(filePath, fullH, fullW);
		try {
			String [] cmds = new String[2];
			cmds[0]=COVERTPAHT+"\\convert " + filePath + " -crop " + fullW+ "x"
					+ fullH + "+0+0 " + tempPath;
			cmds[1] =COVERTPAHT+"\\convert " + tempPath + " -resize " +width +"x"
			+ height+ " " + toPath + "\\"
			+ getImageName(filePath, height, width);
			Process process = runtime.exec(cmds[0]);
			InputStream err = process.getErrorStream();
			int c = 0;
			while((c=err.read())!=-1){
				System.out.print((char)c);
			}
			runtime.exec(cmds[1]);
			/*InputStream in = process.getInputStream();
			int c = 0;
			while((c=in.read())!=-1){
				System.out.print(c);
			}
			in.close();
			Process process2 = runtime.exec(cmds[1]);
			InputStream in2 = process2.getInputStream();
			
			while((c=in2.read())!=-1){
				System.out.print(c);
			}
			in2.close();*/
		} catch (IOException e) {
			e.printStackTrace();
		}

		return getImageName(filePath, height, width);
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
