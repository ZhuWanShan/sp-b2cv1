package com.spshop.admin.client;

import com.google.gwt.core.client.GWT;
import com.google.gwt.dom.client.NativeEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.Event.NativePreviewEvent;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.DialogBox;
import com.google.gwt.user.client.ui.FlowPanel;
import com.google.gwt.user.client.ui.RootPanel;
import com.google.gwt.user.client.ui.Widget;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.KeyCodes;

public class PopWindow extends DialogBox {

	private static PopWindowUiBinder uiBinder = GWT
			.create(PopWindowUiBinder.class);
	
	@UiField
	FlowPanel contentPanel;
	@UiField
	Button closeButton;
	
	interface PopWindowUiBinder extends UiBinder<Widget, PopWindow> {
	}
	public PopWindow() {
		setWidget(uiBinder.createAndBindUi(this));
	}

	public PopWindow(String title,Widget content,boolean glassEnable, boolean animationEnable) {
		this();
		setText(title);
		contentPanel.add(content);
		setAnimationEnabled(animationEnable);
		setGlassEnabled(glassEnable);
	}
	
	public void setContent(Widget w) {
		contentPanel.clear();
		contentPanel.add(w);
	}
	
	@UiHandler("closeButton")
	void onCloseButtonClick(ClickEvent event) {
		hide();
		RootPanel.get().remove(this);
	}
	
	  @Override
	  protected void onPreviewNativeEvent(NativePreviewEvent preview) {
	    super.onPreviewNativeEvent(preview);

	    NativeEvent evt = preview.getNativeEvent();
	    if (evt.getType().equals("keydown")) {
	      // Use the popup's key preview hooks to close the dialog when either
	      // enter or escape is pressed.
	      switch (evt.getKeyCode()) {
	        case KeyCodes.KEY_ENTER:
	        case KeyCodes.KEY_ESCAPE:
	          hide();
	          RootPanel.get().remove(this);
	          break;
	      }
	    }
	  }
}
