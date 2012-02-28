package com.spshop.admin.client;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.event.ToolBar;

public class EditToolBar extends Composite implements ToolBar{

	private static EditToolBarUiBinder uiBinder = GWT
			.create(EditToolBarUiBinder.class);
	
	@UiField Button save;
	@UiField Button delete;

	interface EditToolBarUiBinder extends UiBinder<Widget, EditToolBar> {
	}

	public EditToolBar() {
		initWidget(uiBinder.createAndBindUi(this));
	}
	public void enableSave(boolean enable){
		save.setEnabled(enable);
	}
	
	public void enableDelete(boolean enable){
		delete.setEnabled(enable);
	}
	
	public void onSave(ClickHandler clickHandler){
		save.addClickHandler(clickHandler);
	}
	
	public void onDelete(ClickHandler clickHandler){
		delete.addClickHandler(clickHandler);
	}
}
