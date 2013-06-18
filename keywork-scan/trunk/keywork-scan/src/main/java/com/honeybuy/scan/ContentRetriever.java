package com.honeybuy.scan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;

public class ContentRetriever {
	
	static{
		DbUtils.loadDriver("com.mysql.jdbc.Driver");
	}
	
	private String site;
	private String username;
	private String password;
	public ContentRetriever(String site, String username, String password) {
		super();
		this.site = site;
		this.username = username;
		this.password = password;
	}
	
	public Map<String, String> getTags(){
		Map<String, String> tags = new HashMap<String, String>();
		System.out.println("################################Retrieving tags################################");
		try {
			Connection connection = DriverManager.getConnection(site,username , password);
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT tags, name FROM shop_product where tags is not null");
			while(resultSet.next()){
				String tag = resultSet.getString(1);
				String name = resultSet.getString(2);
				tag = tag.trim();
				System.out.println("Added [" + tag + "] to content");
				tags.put(name, tag);
			}
			DbUtils.close(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	
		System.out.println("################################End Retrieving tags (Count: "+tags.size()+ ")################################");
		return tags;
	}
	
	public Map<String, String> getKeywords(){

		Map<String, String> keywords = new HashMap<String, String>();
		System.out.println("################################Retrieving keywords################################");
		try {
			Connection connection = DriverManager.getConnection(site,username , password);
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT keywords, name FROM shop_product where keywords is not null");
			while(resultSet.next()){
				String keyword = resultSet.getString(1);
				String name = resultSet.getString(2);
				keyword = keyword.trim();
				
				System.out.println("Added [" + keyword + "] to content");
				keywords.put(name,keyword);
			}
			DbUtils.close(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	
		System.out.println("################################End Retrieving keywords (Count: "+keywords.size()+ ")################################");
		return keywords;
	
	}
	
	public Map<String, String> getAbstract(){
		Map<String, String> abstracts = new HashMap<String, String>();
		System.out.println("################################Retrieving abstracts################################");
		try {
			Connection connection = DriverManager.getConnection(site,username , password);
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT abstractText, name FROM shop_product where abstractText is not null");
			while(resultSet.next()){
				String keyword = resultSet.getString(1);
				String name = resultSet.getString(2);
				keyword = keyword.trim();
				System.out.println("Added [" + keyword + "] to content");
				abstracts.put(name,keyword);
			}
			DbUtils.close(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	
		System.out.println("################################End Retrieving abstracts (Count: "+abstracts.size()+ ")################################");
		return abstracts;
	}
	
	public Map<String, String> getTitle(){
		Map<String, String> titles = new HashMap<String, String>();
		System.out.println("################################Retrieving titles################################");
		try {
			Connection connection = DriverManager.getConnection(site,username , password);
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT title, name FROM shop_product where title is not null");
			while(resultSet.next()){
				String keyword = resultSet.getString(1);
				keyword = keyword.trim();
				String name = resultSet.getString(2);
				System.out.println("Added [" + keyword + "] to content");
				titles.put(name,keyword);
			}
			DbUtils.close(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	
		System.out.println("################################End Retrieving titles (Count: "+titles.size()+ ")################################");
		return titles;
	}
	
	
	
}
