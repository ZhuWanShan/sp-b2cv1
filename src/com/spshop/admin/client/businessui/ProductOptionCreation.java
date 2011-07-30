package com.spshop.admin.client.businessui;

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
import com.spshop.model.ProductOption;
import com.spshop.model.SelectType;

public class ProductOptionCreation extends Composite {

	private static ProductOptionCreateUiBinder uiBinder = GWT
			.create(ProductOptionCreateUiBinder.class);
	
	private ProductOption option;
	
	@UiField HTMLPanel itemManagerPanel;
	//@UiField ProdOptionItemManager itemManager;
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
	
	private Set<OptionChangeListener> changeListeners = new TreeSet<ProductOptionCreation.OptionChangeListener>(); 

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
	}
	
	@UiHandler("button")
	void onButtonClick(ClickEvent event) {
		//itemManager.add(new ProdOptionItemCreation());
	}


	public void setOption(ProductOption option) {
		this.option = option;
		executeListener(option, this);
	}

	public ProductOption getOption() {
		return option;
	}
	
	public void addChangeListener(OptionChangeListener changeListener) {
		this.changeListeners.add(changeListener);
	}
	public void clearChangeListener() {
		changeListeners.clear();
	}
	private void executeListener(ProductOption option, ProductOptionCreation creation){
		for (OptionChangeListener listener : changeListeners) {
			listener.onChange(option, creation);
		}
	}

	public static interface OptionChangeListener{
		void onChange(ProductOption option,ProductOptionCreation create);
	}
	@UiHandler("optionName")
	void onOptionNameChange(KeyUpEvent event) {
		this.option.setName(optionName.getValue());
		executeListener(this.option, this);
	}
	@UiHandler("opDesc")
	void onOpDescChange(ChangeEvent event) {
		this.option.setDescription(opDesc.getValue());
		executeListener(option, this);
	}
	@UiHandler("OpDefaultValue")
	void onOpDefaultValueChange(ChangeEvent event) {
		this.option.setDefaultValue(OpDefaultValue.getValue());
		executeListener(option, this);
	}
	@UiHandler("OpTypes")
	void onOpTypesChange(ChangeEvent event) {
		this.option.setSelectType(SelectType.valueOf(OpTypes.getValue(OpTypes.getSelectedIndex())));
		executeListener(option, this);
	}
}
