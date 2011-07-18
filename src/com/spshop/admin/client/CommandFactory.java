package com.spshop.admin.client;


import com.google.gwt.user.client.Window;

public class CommandFactory {
	public static Command createProduct(){
		return new Command() {
			@Override
			public void execute() {
				Window.alert("Create Product");
			}
		};
	}
	
	public static Command createImage(){
		return new Command() {
			@Override
			public void execute() {
				Window.alert("Create Image");
			}
		};
	}
	
	public static Command emptyCommand(){
		return new Command() {
			@Override
			public void execute() {
			}
		};
	}
	
}
