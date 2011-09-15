package com.spshop.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import magick.MagickException;

import com.spshop.admin.shared.ImageConstonts;
import com.spshop.admin.shared.LoginInfo;
import com.spshop.model.Image;

public class ImageTools {
	
	
	private static String  COVERTPAHT="C:\\Program Files (x86)\\ImageMagick-5.5.7-Q8";
	private final static String COMMAND_KEY = "command.path";
	
	static{
		Properties pro = new Properties();
		try {
			pro.load(ImageTools.class.getResourceAsStream("/imagemagick.properties"));
			COVERTPAHT = pro.getProperty(COMMAND_KEY);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	public static Image changeSize(Image img, LoginInfo loginInfo,
			String filePath) throws MagickException, IOException {
		
			String [] names = reSize(ImageConstonts.IMAGE_SIZES, filePath);
			
			img.setLargerUrl(loginInfo.getSite().getImagePath() + "/"+ names[0]);
			
			img.setLogoUrl((loginInfo.getSite().getImagePath() + "/" + names[1]));
			
			img.setThumbnailUrl((loginInfo.getSite().getImagePath() + "/" + names[2]));
			
			img.setSmallUrl((loginInfo.getSite().getImagePath() + "/" + names[3]));
			
			img.setIconUrl(loginInfo.getSite().getImagePath()+ "/" + names[4]);

			return img;
	}

	private static String[] reSize(int[][] size, String filePath)
			throws MagickException, IOException {
		
		String[] imageNames = new String[size.length];
		int height = size[0][1];
		int width = size[0][0];
		
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
			String [] cmds = new String[size.length];
			String initCMD=COVERTPAHT+"\\convert " + filePath + " -crop " + fullW+ "x"
			+ fullH + "+0+0 " + tempPath;
			for(int i = 0; i<cmds.length ; i++){
				String toImage = getImageName(filePath, size[i][0], size[i][1]);
				cmds[i] =COVERTPAHT+"\\convert " + tempPath + " -resize " +size[i][0] +"x"
				+ size[i][1]+ " " + toPath + "\\"+  toImage;
				imageNames[i] = toImage;
			}
			Process process = runtime.exec(initCMD);
			InputStream in = process.getErrorStream();
			int r = 0;
			
			while((r=in.read())!=-1){
				System.out.print((char)r);
			}
			in.close();
			runtime = Runtime.getRuntime();
			for (String cmd : cmds) {
				runtime.exec(cmd);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return imageNames;
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

	public static String getImagePath(String imagePath) {
		File file = new File(imagePath).getParentFile();
		return file.getAbsolutePath();
	}


}
