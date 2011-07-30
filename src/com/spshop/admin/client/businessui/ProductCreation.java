package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.TabLayoutPanel;
import com.spshop.model.Product;
import com.spshop.model.ProductOption;

public class ProductCreation extends Composite{

	private static ImageCreationUiBinder uiBinder = GWT
			.create(ImageCreationUiBinder.class);
	@UiField Button addOption;
	@UiField ProdOptionManager optionManager;
	@UiField Button removeOption;
	
	private Product product;

	interface ImageCreationUiBinder extends UiBinder<TabLayoutPanel, ProductCreation> {
	}

	public ProductCreation() {
		initWidget(uiBinder.createAndBindUi(this));
	}
	
	@UiHandler("addOption")
	void onAddOptionClick(ClickEvent event) {
		addOption(new ProductOption());
	}
	public void addOption(ProductOption option){
		if(optionManager.add(option)){
			option.setProduct(product);
			product.getOptions().add(option);
		}
		
	}
	@UiHandler("removeOption")
	void onRemoveOptionClick(ClickEvent event) {
	}
	
	public void setProduct(Product product) {
		this.product = product;
	}
	public Product getProduct() {
		return product;
	}
}
