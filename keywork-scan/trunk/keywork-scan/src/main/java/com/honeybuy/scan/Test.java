package com.honeybuy.scan;

public class Test {
	public static void main(String[] args) {
		/*KeyWordRetriever keyWordRetriever = new KeyWordRetriever("C:\\Users\\zhuwans\\workspace\\keywork-scan\\src\\main\\resources\\Counterfeit Keyword indicators.xls");
		keyWordRetriever.getKeyword();*/
		
		ContentRetriever contentRetriever = new ContentRetriever("jdbc:mysql://localhost:3306/sshop", "root", "root");
		
		contentRetriever.getTags();
		
		
		System.out.println("sss ss".matches("\\bss\\b"));
	}
}
