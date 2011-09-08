package com.spshop.admin.client.businessui;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.BlurEvent;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.KeyUpEvent;
import com.google.gwt.event.logical.shared.BeforeSelectionEvent;
import com.google.gwt.event.logical.shared.BeforeSelectionHandler;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.CheckBox;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.DoubleBox;
import com.google.gwt.user.client.ui.HTMLPanel;
import com.google.gwt.user.client.ui.RootPanel;
import com.google.gwt.user.client.ui.TabLayoutPanel;
import com.google.gwt.user.client.ui.TextArea;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.AdminWorkspace;
import com.spshop.admin.client.CommandFactory;
import com.spshop.admin.client.PopWindow;
import com.spshop.admin.client.businessui.callback.AsyncCallbackAdapter;
import com.spshop.admin.client.businessui.callback.EditorChangeAdapter;
import com.spshop.admin.client.businessui.callback.SelectedCallBack;
import com.spshop.admin.client.rich.RichText;
import com.spshop.model.Category;
import com.spshop.model.Component;
import com.spshop.model.HTML;
import com.spshop.model.Image;
import com.spshop.model.Product;
import com.spshop.model.ProductOption;
import com.spshop.model.TabProduct;
import com.spshop.model.enums.SelectType;

public class ProductCreation extends Composite{

	private static ImageCreationUiBinder uiBinder = GWT
			.create(ImageCreationUiBinder.class);
	@UiField Button addOption;
	@UiField Button pickRelatedProduct;
	@UiField ProdOptionManager optionManager;
	@UiField Button removeOption;
	@UiField Button Save;
	@UiField Button copy;
	@UiField ProdAttributeManager attributeManager;
	@UiField TextBox name;
	@UiField TextBox title;
	@UiField TextArea keywords;
	@UiField RichText detail;
	@UiField CategoryPicker categoryPicker;
	@UiField ProdImageManager imageManager;
	@UiField DoubleBox prodPrice;
	@UiField DoubleBox prodActualPrice;
	@UiField CheckBox showComments;
	@UiField TopSellingManager relatedProduct;
	@UiField TabLayoutPanel host;
	@UiField CheckBox showLikeButton;
	@UiField Button manualPicker;
	@UiField HTMLPanel manual;
	
	private Product product;

	interface ImageCreationUiBinder extends UiBinder<Widget, ProductCreation> {
	}

	public ProductCreation(Product product) {
		initWidget(uiBinder.createAndBindUi(this));
		setProduct(product);
		TabProduct tp= new TabProduct();
		relatedProduct.setComponent(tp);
		relatedProduct.setShowName(false);
		relatedProduct.setShowButton(false);
		relatedProduct.setShowPicker(false);
		final ProductCreation self = this;
		host.addBeforeSelectionHandler(new BeforeSelectionHandler<Integer>() {
			@Override
			public void onBeforeSelection(BeforeSelectionEvent<Integer> event) {
				if(event.getItem().intValue()==3&&self.getProduct().getTabProductKey()>0){
					final PopWindow load = PopWindow.createLoading("Update recommend").lock();
					AdminWorkspace.ADMIN_SERVICE_ASYNC.getTopSelling(self.getProduct().getTabProductKey(), 
					new AsyncCallbackAdapter<TabProduct>(){
						@Override
						public void onSuccess(TabProduct rs) {
							self.relatedProduct.setComponent(rs);
							load.hide();
							RootPanel.get().remove(load);
						}
					});
				}
				
				if(event.getItem().intValue()==4&&self.getProduct().getManualKey()>0){
					final PopWindow load = PopWindow.createLoading("Update recommend").lock();
					AdminWorkspace.ADMIN_SERVICE_ASYNC.getHTML(self.getProduct().getManualKey(), 
					new AsyncCallbackAdapter<HTML>(){
						@Override
						public void onSuccess(HTML rs) {
							getManual().clear();
							getManual().add(new com.google.gwt.user.client.ui.HTML(rs.getContent()));
							load.hide();
							RootPanel.get().remove(load);
						}
					});
				}
			}
		});
		
		relatedProduct.addChangeListener(new EditorChangeAdapter<TabProduct, TopSellingManager>(){
			@Override
			public void onChange(TabProduct component, TopSellingManager widget) {
				setTabProductKey(component.getId());
			}
		});
	}
	
	private void setTabProductKey(long key){
		product.setTabProductKey(key);
	}
	
	@UiHandler("addOption")
	void onAddOptionClick(ClickEvent event) {
		ProductOption productOption = ProductOption.createWithItem();
		productOption.setSelectType(SelectType.INPUT_TEXT);
		productOption.setProduct(product);
		optionManager.add(productOption,false);
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
		if(product.getId()>0){
			Save.setText("Update");
			copy.setVisible(true);
		}else{
			product.setCreateDate(new Date());
			this.product.setSite(AdminWorkspace.loginInfo.getSite());
			copy.setVisible(false);
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
		categoryPicker.setComponent(product.getCategories());
		imageManager.setComponent(product.getImages());
		prodPrice.setValue(product.getPrice());
		prodActualPrice.setValue(product.getActualPrice());
		showComments.setValue(product.isShowComments());
		showLikeButton.setValue(product.isShowlikeButton());
	}
	public Product getProduct() {
		return product;
	}
	@UiHandler("Save")
	void onSaveClick(ClickEvent event) {
		CommandFactory.lock("Save product").execute();
		AdminWorkspace.ADMIN_SERVICE_ASYNC.saveProduct(product, new AsyncCallbackAdapter<Product>() {
			@Override
			public void onSuccess(Product result) {
				setProduct(result);
				CommandFactory.release().execute();
			}
		});
	}
	@UiHandler("copy")
	void onCopyClick(ClickEvent event) {
		CommandFactory.lock("Save product").execute();
		Product product = getProduct().deepCopy();
		setProduct(product);
		Save.setText("Save");
		CommandFactory.release().execute();
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
	@UiHandler("showComments")
	void onShowCommentsClick(ClickEvent event) {
		product.setShowComments(showComments.getValue());
	}
	@UiHandler("showLikeButton")
	void onShowLikeButtonClick(ClickEvent event) {
		product.setShowlikeButton(showLikeButton.getValue());
	}
	@UiHandler("prodActualPrice")
	void onProdActualPriceKeyUp(KeyUpEvent event) {
		product.setActualPrice(prodActualPrice.getValue());
	}
	@UiHandler("prodPrice")
	void onProdPriceKeyUp(KeyUpEvent event) {
		product.setPrice(prodPrice.getValue());
	}
	@UiHandler("pickRelatedProduct")
	void onPickRelatedProductClick(ClickEvent event) {
		CommandFactory.popUpTabProductQuery(false, new SelectedCallBack() {
			
			@Override
			public void callBack(List<Component> selectedItems) {
				TabProduct tabProduct =(TabProduct)selectedItems.get(0);
				getRelatedProduct().setComponent(tabProduct);
				getProduct().setTabProductKey(tabProduct.getId());
			}
		}).execute();
	}
	
	@UiHandler("manualPicker")
	void onManualPickerClick(ClickEvent event) {
		CommandFactory.popUpHTMLQuery(false, new SelectedCallBack() {
			
			@Override
			public void callBack(List<Component> selectedItems) {
				HTML html = (HTML)selectedItems.get(0);
				getProduct().setManualKey(html.getId());
				getManual().clear();
				getManual().add(new com.google.gwt.user.client.ui.HTML(html.getContent()));
			}
		}).execute();
	}
	
	public TopSellingManager getRelatedProduct() {
		return relatedProduct;
	}

	public HTMLPanel getManual() {
		return manual;
	}
}
