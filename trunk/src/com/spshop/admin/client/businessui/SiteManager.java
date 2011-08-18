package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Label;
import com.google.gwt.user.client.ui.FormPanel;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.user.client.ui.FormPanel.SubmitCompleteEvent;
import com.spshop.admin.client.AdminWorkspace;

public class SiteManager extends Composite {

	private static SiteManagerUiBinder uiBinder = GWT
			.create(SiteManagerUiBinder.class);
	@UiField Button updateCategoryCache;
	@UiField Label cacheStatus;
	@UiField FormPanel updateCatlogForm;

	interface SiteManagerUiBinder extends UiBinder<Widget, SiteManager> {
	}

	public SiteManager() {
		initWidget(uiBinder.createAndBindUi(this));
		updateCatlogForm.setAction(AdminWorkspace.getSilteUrl()+"/"+"initServlet");
	}

	@UiHandler("updateCategoryCache")
	void onUpdateCategoryCacheClick(ClickEvent event) {
		updateCatlogForm.submit();
	}
	@UiHandler("updateCatlogForm")
	void onUpdateCatlogFormSubmitComplete(SubmitCompleteEvent event) {
		cacheStatus.setText("Updated");
	}
}
