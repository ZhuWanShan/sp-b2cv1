package com.spshop.admin.client;


import com.spshop.admin.client.businessui.ImageCreation;
import com.spshop.admin.client.businessui.ProductCreation;

public class CommandFactory {
	public static Command createProduct(){
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				AdminWorkspace.contentPanel.body.add(new ProductCreation());
			}
		};
	}
	
	public static Command createImage(){
		return new CommandAdapter() {
			@Override
			public void execute() {
				//Window.alert("Create Image");
				AdminWorkspace.contentPanel.body.clear();
				AdminWorkspace.contentPanel.body.add(new ImageCreation());
			}
		};
	}
	
	public static Command emptyCommand(){
		return new CommandAdapter() {
			@Override
			public boolean isEmpty() {
				return true;
			}
		};
	}
	
}
