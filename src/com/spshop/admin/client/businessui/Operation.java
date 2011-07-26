package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.event.dom.client.ClickEvent;
import com.spshop.admin.client.PopWindow;

public class Operation extends Composite {

	private static OperationUiBinder uiBinder = GWT
			.create(OperationUiBinder.class);
	@UiField Button edit;
	@UiField Button delate;

	interface OperationUiBinder extends UiBinder<Widget, Operation> {
	}

	public Operation() {
		initWidget(uiBinder.createAndBindUi(this));
	}

	@UiHandler("edit")
	void onEditClick(ClickEvent event) {
		ImageCreation imageCreation = new ImageCreation();
		imageCreation.setSize("800px", "400px");
		imageCreation.setTitle("Edit Image");
		PopWindow pop = new PopWindow("Edit Image",imageCreation, true, true);
		//pop.setSize("400px", "400px");
		pop.center();
	}
	@UiHandler("delate")
	void onDelateClick(ClickEvent event) {
	}
}
