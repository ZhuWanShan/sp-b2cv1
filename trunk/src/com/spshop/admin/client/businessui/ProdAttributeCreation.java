package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.TextArea;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.ProductProperty;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.KeyUpEvent;

public class ProdAttributeCreation extends ObservableComposite<ProductProperty, ProdAttributeCreation> {

	private static ProdAttributeCreationUiBinder uiBinder = GWT
			.create(ProdAttributeCreationUiBinder.class);
	@UiField
	TextBox name;
	@UiField
	TextArea value;
	@UiField
	Button deleteButton;
	

	interface ProdAttributeCreationUiBinder extends
			UiBinder<Widget, ProdAttributeCreation> {
	}

	public ProdAttributeCreation(ProductProperty productProperty) {
		initWidget(uiBinder.createAndBindUi(this));
		setComponet(productProperty);
	}
	
	public void setComponet(ProductProperty productProperty) {
		this.componet = productProperty;
		this.name.setValue(productProperty.getName());
		this.value.setValue(productProperty.getValue());
	}

	@UiHandler("deleteButton")
	void onDeleteButtonClick(ClickEvent event) {
		notifyDelete();
	}
	@UiHandler("value")
	void onValueKeyUp(KeyUpEvent event) {
		this.componet.setValue(value.getValue());
		notifyChange();
	}
	@UiHandler("name")
	void onNameKeyUp(KeyUpEvent event) {
		this.componet.setName(name.getValue());
		notifyChange();
	}
}
