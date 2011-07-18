package com.spshop.admin.client;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.DialogBox;
import com.google.gwt.user.client.ui.FlowPanel;
import com.google.gwt.user.client.ui.RootPanel;
import com.google.gwt.user.client.ui.Widget;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.event.dom.client.ClickEvent;

public class PopWindow extends DialogBox {

	private static PopWindowUiBinder uiBinder = GWT
			.create(PopWindowUiBinder.class);
	
	@UiField
	FlowPanel contentPanel;
	@UiField
	Button closeButton;
	
	interface PopWindowUiBinder extends UiBinder<Widget, PopWindow> {
	}

	public PopWindow(String title, Widget content,boolean glassEnable, boolean animationEnable) {
		setText(title);
		setWidget(uiBinder.createAndBindUi(this));
		contentPanel.add(content);
		setAnimationEnabled(glassEnable);
		setGlassEnabled(animationEnable);
	}

	@UiHandler("closeButton")
	void onCloseButtonClick(ClickEvent event) {
		hide();
		RootPanel.get().remove(this);
	}
}
