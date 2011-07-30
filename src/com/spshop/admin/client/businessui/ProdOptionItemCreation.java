package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;

public class ProdOptionItemCreation extends Composite {

	private static ProdOptionItemCreationUiBinder uiBinder = GWT
			.create(ProdOptionItemCreationUiBinder.class);

	interface ProdOptionItemCreationUiBinder extends
			UiBinder<Widget, ProdOptionItemCreation> {
	}

	public ProdOptionItemCreation() {
		initWidget(uiBinder.createAndBindUi(this));
	}

}
