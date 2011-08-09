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
import com.google.gwt.event.logical.shared.ValueChangeEvent;
import com.google.gwt.event.dom.client.ClickEvent;

public class ProdOptionItemCreation extends Composite implements ChangeObservable<ProductOptionItem, ProdOptionItemCreation>{

	private static ProdOptionItemCreationUiBinder uiBinder = GWT
			.create(ProdOptionItemCreationUiBinder.class);
	@UiField TextBox name;
	@UiField TextBox value;
	public TextBox getName() {
		return name;
	}

	public TextBox getValue() {
		return value;
	}

	@UiField Button delete;

	private ProductOptionItem optionItem;
	
	private Set<EditorChangeListener<ProductOptionItem, ProdOptionItemCreation>> listeners= new TreeSet<EditorChangeListener<ProductOptionItem,ProdOptionItemCreation>>();
	
	interface ProdOptionItemCreationUiBinder extends
			UiBinder<Widget, ProdOptionItemCreation> {
	}

	public ProdOptionItemCreation(ProductOptionItem item) {
		initWidget(uiBinder.createAndBindUi(this));
		setOptionItem(item);
	}

	public void setOptionItem(ProductOptionItem optionItem) {
		this.optionItem = optionItem;
		this.value.setValue(optionItem.getValue()); 
		this.name.setValue(optionItem.getName());
	}

	public ProductOptionItem getOptionItem() {
		return optionItem;
	}

	@UiHandler("name")
	void onNameKeyUp(KeyUpEvent event) {
		this.optionItem.setName(name.getValue());
		notifyChange();
	}
	@UiHandler("value")
	void onValueValueChange(ValueChangeEvent<String> event) {
		this.optionItem.setValue(value.getValue());
		notifyChange();
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
	
	@UiHandler("delete")
	void onDeleteClick(ClickEvent event) {
		notifyDelete();
	}
}
