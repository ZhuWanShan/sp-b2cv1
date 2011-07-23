package com.spshop.admin.client;


import com.spshop.admin.client.businessui.CategoryManager;
import com.spshop.admin.client.businessui.ComponentQuery;
import com.spshop.admin.client.businessui.ImageCreation;
import com.spshop.admin.client.businessui.ProductCreation;
import com.spshop.model.Component;
import com.spshop.model.Image;

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
	
	public static Command categoryManager(){
		return new CommandAdapter() {
			@Override
			public void execute() {
				//Window.alert("Create Image");
				AdminWorkspace.contentPanel.body.clear();
				AdminWorkspace.contentPanel.body.add(new CategoryManager());
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

	public static Command queryImage() {
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				ComponentQuery componentQuery = new ComponentQuery("Image Query",Image.class);
				AdminWorkspace.contentPanel.body.add(componentQuery);
			}
		};
	}
	
}
