package com.spshop.admin.client;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;

public class ProductionOptionItemCreation extends Composite {

	private static ProductionOptionItemCreationUiBinder uiBinder = GWT
			.create(ProductionOptionItemCreationUiBinder.class);

	interface ProductionOptionItemCreationUiBinder extends
			UiBinder<Widget, ProductionOptionItemCreation> {
	}

	public ProductionOptionItemCreation() {
		initWidget(uiBinder.createAndBindUi(this));
	}

}
