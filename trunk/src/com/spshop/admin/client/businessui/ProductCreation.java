package com.spshop.admin.client.businessui;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.BlurEvent;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.KeyUpEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.TextArea;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.AdminWorkspace;
import com.spshop.admin.client.AsyncCallbackAdapter;
import com.spshop.admin.client.rich.RichText;
import com.spshop.model.Category;
import com.spshop.model.Image;
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
	@UiField ProdAttributeManager attributeManager;
	@UiField TextBox name;
	@UiField TextBox title;
	@UiField TextArea keywords;
	@UiField RichText detail;
	@UiField CategoryPicker categoryPicker;
	@UiField ProdImageManager imageManager;
	
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
	
	public void setProduct(final Product product) {
		this.product = product;
		product.setUpdateDate(new Date());
		this.product.setSite(AdminWorkspace.loginInfo.getSite());
		if(product.getId()>0){
			Save.setText("Update");
		}else{
			product.setCreateDate(new Date());
		}
		List<ProductOption> options = product.getOptions();
		if(null==options){
			options = new ArrayList<ProductOption>();
			product.setOptions(options);
		}
		
		if(null==product.getCategories()){
			product.setCategories(new ArrayList<Category>());
		}
		
		if(null==product.getImages()){
			product.setImages(new ArrayList<Image>());
		}
		
		name.setValue(product.getName());
		title.setValue(product.getTitle());
		keywords.setValue(product.getKeywords());
		detail.setHTML(product.getDetail());
		optionManager.setOptions(options);
		attributeManager.setProduct(product);
		categoryPicker.setComponet(product.getCategories());
		imageManager.setComponet(product.getImages());
	}
	public Product getProduct() {
		return product;
	}
	@UiHandler("Save")
	void onSaveClick(ClickEvent event) {
		AdminWorkspace.ADMIN_SERVICE_ASYNC.saveProduct(product, new AsyncCallbackAdapter<Product>() {
			@Override
			public void onSuccess(Product result) {
				setProduct(result);
			}
		});
	}
	@UiHandler("keywords")
	void onKeywordsKeyUp(KeyUpEvent event) {
		product.setKeywords(keywords.getValue());
	}
	@UiHandler("title")
	void onTitleKeyUp(KeyUpEvent event) {
		product.setTitle(title.getValue());
	}
	@UiHandler("detail")
	void onDetailBlur(BlurEvent event) {
		product.setDetail(detail.getHTML());
	}
	@UiHandler("name")
	void onNameKeyUp(KeyUpEvent event) {
		product.setName(name.getValue());
	}
}
