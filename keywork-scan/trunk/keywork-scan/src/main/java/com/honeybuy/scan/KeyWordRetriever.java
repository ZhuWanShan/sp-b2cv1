package com.honeybuy.scan;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

public class KeyWordRetriever {
	private String filePath;
	
	public KeyWordRetriever(String filePath) {
		this.filePath = filePath;
	}
	
	public List<String> getKeyword(){
		List<String> keywords = new ArrayList<String>();
		
		try {
			System.out.println("####################################Loading file "  + filePath + "####################################");
			
			Workbook workbook = Workbook.getWorkbook(new File(filePath));
			Sheet sheet = workbook.getSheet(0);
			int startLine = 1;
			while(true){
				Cell c = sheet.getCell(0,startLine);
				startLine++;
				String key = c.getContents();
				key = key==null?"":key.trim().toLowerCase();
				if(key.length() > 0){
					System.out.println(key);
					System.out.println("Adding keyword[" + key + "]");
					keywords.add(key);
				}else{
					break;
				}
			}
			
			workbook.close();
			
		} catch (BiffException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("#################################### Keywords count[" + keywords.size() +"]####################################");
		
		return keywords;
 	}
}
