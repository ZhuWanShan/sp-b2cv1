package com.spshop.admin.client;

import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.core.client.GWT;
import com.google.gwt.event.logical.shared.ResizeEvent;
import com.google.gwt.event.logical.shared.ResizeHandler;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.RootPanel;
import com.spshop.admin.client.businessui.service.AdminService;
import com.spshop.admin.client.businessui.service.AdminServiceAsync;

public class AdminWorkspace2 implements EntryPoint {

	@Override
	public void onModuleLoad() {
		 Window.enableScrolling(false);
		 Window.setMargin("0px");
		 AdminServiceAsync serviceAsync = GWT.create(AdminService.class);
		final Workspace2 w2 = new Workspace2();
		w2.setAdminService(serviceAsync);
		w2.setSize(Window.getClientWidth()+"px", Window.getClientHeight()+"px");
		RootPanel.get().add(w2);
		Window.addResizeHandler(new ResizeHandler() {
			@Override
			public void onResize(ResizeEvent e) {
				w2.setSize(e.getWidth()+"px", e.getHeight()+"px");
			}
		});
	}

}
