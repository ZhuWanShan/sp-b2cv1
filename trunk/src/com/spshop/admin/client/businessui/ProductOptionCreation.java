package com.spshop.admin.client.businessui;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ChangeEvent;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.KeyUpEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.HTMLPanel;
import com.google.gwt.user.client.ui.ListBox;
import com.google.gwt.user.client.ui.TextArea;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.businessui.callback.ChangeObservable;
import com.spshop.admin.client.businessui.callback.EditorChangeListener;
import com.spshop.model.ProductOption;
import com.spshop.model.ProductOptionItem;
import com.spshop.model.enums.SelectType;

public class ProductOptionCreation extends Composite implements ChangeObservable<ProductOption, ProductOptionCreation>{

	private static ProductOptionCreateUiBinder uiBinder = GWT
			.create(ProductOptionCreateUiBinder.class);
	
	private ProductOption option;
	
	@UiField HTMLPanel itemManagerPanel;
	@UiField ProdOptionItemManager itemManager;
	@UiField Button button;
	@UiField TextBox optionName;
	public HTMLPanel getItemManagerPanel() {
		return itemManagerPanel;
	}
	public TextBox getOptionName() {
		return optionName;
	}
	public TextArea getOpDesc() {
		return opDesc;
	}
	public TextBox getOpDefaultValue() {
		return OpDefaultValue;
	}
	public ListBox getOpTypes() {
		return OpTypes;
	}
	@UiField TextArea opDesc;
	@UiField TextBox OpDefaultValue;
	@UiField ListBox OpTypes;
	
	private Set<EditorChangeListener<ProductOption, ProductOptionCreation>> changeListeners = new TreeSet<EditorChangeListener<ProductOption, ProductOptionCreation>>(); 

	interface ProductOptionCreateUiBinder extends
			UiBinder<Widget, ProductOptionCreation> {
	}
	public ProductOptionCreation() {
		this(ProductOption.createWithItem());
	}
	public ProductOptionCreation(ProductOption option) {
		initWidget(uiBinder.createAndBindUi(this));
		this.setOption(option);
		SelectType outputTypes[] = SelectType.values();
		for (SelectType selectType : outputTypes) {
			OpTypes.addItem(selectType.getTitle(), selectType.getValue());
			OpTypes.setSelectedIndex(0);
		}
		List<ProductOptionItem> items = option.getItems();
		if(null==items){
			items = new ArrayList<ProductOptionItem>();
			option.setItems(items);
		}
		itemManager.setOptionItems(items);
	}
	
	@UiHandler("button")
	void onButtonClick(ClickEvent event) {
		ProductOptionItem item = new ProductOptionItem();
		item.setOption(option);
		itemManager.addOptionItem(item);
	}


	public void setOption(ProductOption option) {
		this.option = option;
		notifyChange();
	}

	public ProductOption getOption() {
		return option;
	}
	
	@Override
	public void addChangeListener(EditorChangeListener<ProductOption, ProductOptionCreation> changeListener) {
		this.changeListeners.add(changeListener);
	}
	public void clearChangeListener() {
		changeListeners.clear();
	}
	@Override
	public void notifyChange(){
		for (EditorChangeListener<ProductOption, ProductOptionCreation> listener : changeListeners) {
			listener.onChange(option, this);
		}
	}

	@UiHandler("optionName")
	void onOptionNameChange(KeyUpEvent event) {
		this.option.setName(optionName.getValue());
		notifyChange();
	}
	@UiHandler("opDesc")
	void onOpDescChange(ChangeEvent event) {
		this.option.setDescription(opDesc.getValue());
		notifyChange();
	}
	@UiHandler("OpDefaultValue")
	void onOpDefaultValueChange(ChangeEvent event) {
		this.option.setDefaultValue(OpDefaultValue.getValue());
		notifyChange();
	}
	@UiHandler("OpTypes")
	void onOpTypesChange(ChangeEvent event) {
		this.option.setSelectType(SelectType.valueOf(OpTypes.getValue(OpTypes.getSelectedIndex())));
		notifyChange();
	}
	@Override
	public void notifyDelete() {
		//Do nothing
	}
}
