package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.TabLayoutPanel;

public class ImageCreation extends Composite{

	private static ImageCreationUiBinder uiBinder = GWT
			.create(ImageCreationUiBinder.class);

	interface ImageCreationUiBinder extends UiBinder<TabLayoutPanel, ImageCreation> {
	}

	public ImageCreation() {
		initWidget(uiBinder.createAndBindUi(this));
	}
}
