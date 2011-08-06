package com.spshop.admin.shared;

import java.util.ArrayList;
import java.util.List;

public class ImageConstonts {
	public static int[] LOGO_SIZE  = new int[]{317,438};
	public static int[] LARGE_SIZE  = new int[]{460,635};
	public static int[] THUM_SIZE  = new int[]{192,265};
	public static int[] ICON_SIZE  = new int[]{46,63};
	public static int[] SMALL_SIZE  = new int[]{74,102};
	
	public static List<int[]> imageSizeList = new ArrayList<int[]>();
	static {
		imageSizeList.add(LOGO_SIZE);
		imageSizeList.add(LARGE_SIZE);
		imageSizeList.add(THUM_SIZE);
		imageSizeList.add(ICON_SIZE);
		imageSizeList.add(SMALL_SIZE);
	}
}
