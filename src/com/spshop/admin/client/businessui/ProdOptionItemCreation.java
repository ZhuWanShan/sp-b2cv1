package com.spshop.admin.client.businessui;

import java.util.Set;
import java.util.TreeSet;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.businessui.callback.ChangeObservable;
import com.spshop.admin.client.businessui.callback.EditorChangeListener;
import com.spshop.model.ProductOptionItem;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.event.dom.client.KeyUpEvent;
import com.google.gwt.user.client.ui.Button;

public class ProdOptionItemCreation extends Composite implements ChangeObservable<ProductOptionItem, ProdOptionItemCreation>{

	private static ProdOptionItemCreationUiBinder uiBinder = GWT
			.create(ProdOptionItemCreationUiBinder.class);
	@UiField TextBox name;
	@UiField TextBox value;
	@UiField Button delete;

	private ProductOptionItem optionItem;
	
	private Set<EditorChangeListener<ProductOptionItem, ProdOptionItemCreation>> listeners= new TreeSet<EditorChangeListener<ProductOptionItem,ProdOptionItemCreation>>();
	
	interface ProdOptionItemCreationUiBinder extends
			UiBinder<Widget, ProdOptionItemCreation> {
	}

	public ProdOptionItemCreation() {
		initWidget(uiBinder.createAndBindUi(this));
	}

	public void setOptionItem(ProductOptionItem optionItem) {
		this.optionItem = optionItem;
	}

	public ProductOptionItem getOptionItem() {
		return optionItem;
	}

	@UiHandler("name")
	void onNameKeyUp(KeyUpEvent event) {
		this.optionItem.setName(name.getValue());
	}
	@UiHandler("value")
	void onValueKeyUp(KeyUpEvent event) {
		this.optionItem.setValue(name.getValue());
	}

	@Override
	public void addChangeListener(
			EditorChangeListener<ProductOptionItem, ProdOptionItemCreation> listener) {
		listeners.add(listener);
	}

	@Override
	public void notifyChange() {
		for (EditorChangeListener<ProductOptionItem, ProdOptionItemCreation> listener : listeners) {
			listener.onChange(optionItem, this);
		}
	}

	@Override
	public void notifyDelete() {
		for (EditorChangeListener<ProductOptionItem, ProdOptionItemCreation> listener : listeners) {
			listener.onDelete(optionItem, this);
		}
	}
	
}
