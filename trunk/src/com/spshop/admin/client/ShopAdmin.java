package com.spshop.admin.client;


import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.user.client.ui.RootPanel;

/**
 * Entry point classes define <code>onModuleLoad()</code>.
 */
public class ShopAdmin implements EntryPoint {
	
	
	private MainAppPanel mainPanel = new MainAppPanel();
	
	public void initialize() {
		 RootPanel.get().add(mainPanel.getUI());
	 }
	
	/**
	 * This is the entry point method.
	 */
	public void onModuleLoad() {
		initialize();
	}

}
