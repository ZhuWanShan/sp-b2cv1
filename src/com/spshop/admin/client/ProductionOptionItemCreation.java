package com.spshop.admin.client;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.ProductOptionItem;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.event.dom.client.KeyUpEvent;
import com.google.gwt.event.dom.client.FocusEvent;

public class ProductionOptionItemCreation extends Composite {

	private static ProductionOptionItemCreationUiBinder uiBinder = GWT
			.create(ProductionOptionItemCreationUiBinder.class);
	@UiField TextBox name;
	@UiField TextBox value;

	interface ProductionOptionItemCreationUiBinder extends
			UiBinder<Widget, ProductionOptionItemCreation> {
	}

	public ProductionOptionItemCreation(ProductOptionItem item) {
		initWidget(uiBinder.createAndBindUi(this));
	}

	@UiHandler("name")
	void onNameKeyUp(KeyUpEvent event) {
	}
	@UiHandler("value")
	void onValueKeyUp(KeyUpEvent event) {
	}
	@UiHandler("value")
	void onValueFocus(FocusEvent event) {
	}
}
