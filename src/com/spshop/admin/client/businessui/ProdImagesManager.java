package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Button;

public class ProdImagesManager extends Composite {

	private static ProdImagesManagerUiBinder uiBinder = GWT
			.create(ProdImagesManagerUiBinder.class);
	@UiField Button imagePick;

	interface ProdImagesManagerUiBinder extends
			UiBinder<Widget, ProdImagesManager> {
	}

	public ProdImagesManager() {
		initWidget(uiBinder.createAndBindUi(this));
	}

}
