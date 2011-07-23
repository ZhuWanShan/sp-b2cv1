package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.FileUpload;
import com.google.gwt.user.client.ui.ListBox;
import com.google.gwt.user.client.ui.TabLayoutPanel;
import com.google.gwt.user.client.ui.TextBox;
import com.spshop.model.ImageSizeType;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.user.client.ui.FormPanel;
import com.google.gwt.user.client.ui.FormPanel.SubmitCompleteEvent;

public class ImageCreation extends Composite{

	private static ImageCreationUiBinder uiBinder = GWT
			.create(ImageCreationUiBinder.class);
	
	@UiField
	TextBox imageName;
	
	@UiField
	ListBox imageType;
	
	@UiField
	FileUpload imageFile;
	@UiField FormPanel formPanel;

	interface ImageCreationUiBinder extends UiBinder<TabLayoutPanel, ImageCreation> {
	}

	public ImageCreation() {
		
		initWidget(uiBinder.createAndBindUi(this));
		
		for(ImageSizeType imageSizeType : ImageSizeType.values()){
			imageType.addItem(imageSizeType.getTitle(), imageSizeType.getValue());
		}
	}
	@UiHandler("formPanel")
	void onFormPanelSubmitComplete(SubmitCompleteEvent event) {
		
	}
}
