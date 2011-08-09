package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;

public class ProdAttributeManager extends Composite {

	private static ProdAttributeManagerUiBinder uiBinder = GWT
			.create(ProdAttributeManagerUiBinder.class);

	interface ProdAttributeManagerUiBinder extends
			UiBinder<Widget, ProdAttributeManager> {
	}

	public ProdAttributeManager() {
		initWidget(uiBinder.createAndBindUi(this));
	}

}
