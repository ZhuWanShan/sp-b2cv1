package com.spshop.admin.shared;


public class ImageConstonts {
	
	public static int[] LARGE_SIZE  = new int[]{500,690};
	public static int[] LOGO_SIZE  = new int[]{317,438};
	public static int[] THUM_SIZE  = new int[]{192,265};
	public static int[] SMALL_SIZE  = new int[]{74,102};
	public static int[] ICON_SIZE  = new int[]{46,63};
	
	
	public static int[][] IMAGE_SIZES = new int[5][2];
	
	static{
		IMAGE_SIZES[0] = LARGE_SIZE;
		IMAGE_SIZES[1] = LOGO_SIZE;
		IMAGE_SIZES[2] = THUM_SIZE;
		IMAGE_SIZES[3] = SMALL_SIZE;
		IMAGE_SIZES[4] = ICON_SIZE;
	}
}
