package com.honeybuy.scan;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LunchSan {
	
	private String outPutFile;

	public LunchSan(String outPutFile) {
		super();
		this.setOutPutFile(outPutFile);
	}

	public Map<String, String> findEvilProduct(List<String> keywords, Map<String,String> contents){
		Map<String,String> result = new HashMap<String,String>();
		
		for (String keyword : keywords) {
			for (Map.Entry<String, String> content : contents.entrySet()) {
				//System.out.println("Scan Content: [" + content.getValue()+"]");
				if(content.getValue().indexOf(" "+keyword+" ") > 0 
						|| (content.getValue().indexOf(keyword+" ") > 0 && content.getValue().startsWith(keyword)) 
						|| (content.getValue().indexOf(" "+keyword) > 0 && content.getValue().endsWith(keyword))){
					result.put(content.getKey(), content.getValue() + "#####" + keyword +"#####");
					System.err.println("Evil : " + content + "#####" + keyword +"#####");
				}
			}
		}
		
		return result;
	}
	
	public static void main(String[] args) {
		KeyWordRetriever keyWordRetriever = new KeyWordRetriever("C:\\Users\\zhuwans\\workspace\\keywork-scan\\src\\main\\resources\\Counterfeit Keyword indicators.xls");
		
		ContentRetriever contentRetriever = new ContentRetriever("jdbc:mysql://64.120.169.101:3306/sshop", "root", "abc123_");
		
		LunchSan lunchSan = new LunchSan("C:\\Workspace\\out.text");
		
		List<String> keywords = keyWordRetriever.getKeyword();
		Map<String,String> tagsContents = contentRetriever.getTags();
		Map<String,String> titleContents = contentRetriever.getTitle();
		Map<String,String> keywordsContents = contentRetriever.getKeywords();
		Map<String,String> abstractContents = contentRetriever.getAbstract();
		
		
		Map<String, String> tagEvils = lunchSan.findEvilProduct(keywords, tagsContents);
		Map<String, String> titleEvils = lunchSan.findEvilProduct(keywords, titleContents);
		Map<String, String> keyworldsEvils = lunchSan.findEvilProduct(keywords, keywordsContents);
		Map<String, String> abstractEvils = lunchSan.findEvilProduct(keywords, abstractContents);
		
		File file = new File(lunchSan.getOutPutFile());
		
		if(!file.exists()){
			try {
				file.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		try {
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
			writer.append("Tags Evils"+"\r\n");
			for (Map.Entry<String, String> en : tagEvils.entrySet()) {
				writer.append("Product:["+en.getKey()+"]" + "--->" + en.getValue()+"\r\n");
			}
			
			writer.append("Title Evils"+"\r\n");
			for (Map.Entry<String, String> en : titleEvils.entrySet()) {
				writer.append("Product:["+en.getKey()+"]" + "--->" + en.getValue()+"\r\n");
			}
			
			writer.append("Keywords Evils"+"\r\n");
			for (Map.Entry<String, String> en : keyworldsEvils.entrySet()) {
				writer.append("Product:["+en.getKey()+"]" + "--->" + en.getValue()+"\r\n");
			}
			
			writer.append("Abstracts Evils"+"\r\n");
			for (Map.Entry<String, String> en : abstractEvils.entrySet()) {
				writer.append("Product:["+en.getKey()+"]" + "--->" + en.getValue()+"\r\n");
			}
			
			writer.flush();
			writer.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public String getOutPutFile() {
		return outPutFile;
	}

	public void setOutPutFile(String outPutFile) {
		this.outPutFile = outPutFile;
	}
}
