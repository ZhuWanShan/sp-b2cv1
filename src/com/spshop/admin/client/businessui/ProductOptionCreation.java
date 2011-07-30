package com.spshop.admin.client.businessui;

import java.util.Set;
import java.util.TreeSet;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.HTMLPanel;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.ProductOption;
import com.spshop.model.SelectType;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.TextArea;
import com.google.gwt.user.client.ui.ListBox;
import com.google.gwt.event.dom.client.ChangeEvent;

public class ProductOptionCreation extends Composite {

	private static ProductOptionCreateUiBinder uiBinder = GWT
			.create(ProductOptionCreateUiBinder.class);
	
	private ProductOption option;
	
	@UiField HTMLPanel itemManagerPanel;
	//@UiField ProdOptionItemManager itemManager;
	@UiField Button button;
	@UiField TextBox optionName;
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
	void onOptionNameChange(ChangeEvent event) {
		this.option.setName(optionName.getValue());
	}
	@UiHandler("opDesc")
	void onOpDescChange(ChangeEvent event) {
		this.option.setDescription(opDesc.getValue());
	}
	@UiHandler("OpDefaultValue")
	void onOpDefaultValueChange(ChangeEvent event) {
		this.option.setDefaultValue(OpDefaultValue.getValue());
	}
	@UiHandler("OpTypes")
	void onOpTypesChange(ChangeEvent event) {
		this.option.setSelectType(SelectType.valueOf(OpTypes.getValue(OpTypes.getSelectedIndex())));
	}
}
