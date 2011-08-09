package com.spshop.admin.client.businessui;

import java.util.ArrayList;
import java.util.List;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.Product;
import com.spshop.model.ProductOption;
import com.spshop.model.enums.SelectType;

public class ProductCreation extends Composite{

	private static ImageCreationUiBinder uiBinder = GWT
			.create(ImageCreationUiBinder.class);
	@UiField Button addOption;
	@UiField ProdOptionManager optionManager;
	@UiField Button removeOption;
	@UiField Button Save;
	
	private Product product;

	interface ImageCreationUiBinder extends UiBinder<Widget, ProductCreation> {
	}

	public ProductCreation(Product product) {
		initWidget(uiBinder.createAndBindUi(this));
		setProduct(product);
	}
	
	@UiHandler("addOption")
	void onAddOptionClick(ClickEvent event) {
		ProductOption productOption = ProductOption.createWithItem();
		productOption.setSelectType(SelectType.INPUT_TEXT);
		productOption.setProduct(product);
		optionManager.add(productOption);
	}
	@UiHandler("removeOption")
	void onRemoveOptionClick(ClickEvent event) {
		if(Window.confirm("Are your sure!")){
			optionManager.removeCurrentOption();
		}
	}
	
	public void setProduct(Product product) {
		this.product = product;
		List<ProductOption> options = product.getOptions();
		if(null==options){
			options = new ArrayList<ProductOption>();
		}
		optionManager.setOptions(options);
	}
	public Product getProduct() {
		return product;
	}
	@UiHandler("Save")
	void onSaveClick(ClickEvent event) {
	}
}
