package com.spshop.admin.client.businessui;

import java.util.Date;
import java.util.List;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.resources.client.CssResource;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.CheckBox;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.RichTextArea;
import com.google.gwt.user.client.ui.TextArea;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.VerticalPanel;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.AdminWorkspace;
import com.spshop.admin.client.AsyncCallbackAdapter;
import com.spshop.admin.client.CommandFactory;
import com.spshop.admin.client.PopWindow;
import com.spshop.admin.client.businessui.ComponentQuery.SelectionStyle;
import com.spshop.admin.client.rich.RichTextToolbar2;
import com.spshop.model.Category;
import com.spshop.model.Component;

public class CategoryCreation extends Composite {
	
	private Category category;
	private CategoryManager categoryManager;

	private static CategoryCreationUiBinder uiBinder = GWT
			.create(CategoryCreationUiBinder.class);
	@UiField TextBox name;
	@UiField TextBox displayName;
	@UiField Button button;
	@UiField TextBox url;
	@UiField TextArea relatedKeywords;
	@UiField CheckBox isSpecialOffer;
	private RichTextArea marketContent;
	@UiField VerticalPanel richContent;
	@UiField Button specicalOfferImage;
	private boolean addChild=false;
	@UiField
	RichAreaStyle richArea;
	
	public interface RichAreaStyle extends CssResource{
		String richStyle();
		String richStyleHeader();
	}

	interface CategoryCreationUiBinder extends
			UiBinder<Widget, CategoryCreation> {
	}

	public CategoryCreation(Category category,CategoryManager categoryManager) {
		initWidget(uiBinder.createAndBindUi(this));
		setCategory(category);
		this.categoryManager = categoryManager;
		marketContent = new RichTextArea(); 
		marketContent.addStyleName(richArea.richStyle());
		RichTextToolbar2 richTextToolbar = new RichTextToolbar2(marketContent);
		richTextToolbar.addStyleName(richArea.richStyleHeader());
		marketContent.setSize("100%", "15EM");
		richContent.add(richTextToolbar);
		richContent.add(marketContent);
		marketContent.setFocus(true);
	}
	
	public CategoryCreation(Category category,CategoryManager categoryManager,boolean addChild) {
		this(category,categoryManager);
		this.addChild = true;
	}

	private void setCategory(Category category) {
		this.category = category;
		name.setValue(category.getName());
		displayName.setValue(category.getDisplayName());
	}

	public Category getCategory() {
		return category;
	}

	@UiHandler("button")
	void onButtonClick(ClickEvent event) {
		category.setUpdateDate(new Date());
		category.setName(name.getValue());
		category.setDisplayName(displayName.getValue());
		//categoryManager.tree.update(category);
		if(category.getId()< 1){
			category.setCreateDate(new Date());
		}
		final PopWindow loading = PopWindow.createLoading("Save Category");
		loading.center();
		button.setEnabled(false);
		AdminWorkspace.ADMIN_SERVICE_ASYNC.saveCategory(category, new AsyncCallbackAdapter<Category>(){
			@Override
			public void onSuccess(Category rs) {
				CategoryTreeItem item = (CategoryTreeItem) categoryManager.getTree().getSelectedItem();
				if(null!=rs.getParent()){
					if(addChild){
						categoryManager.getTree().addCategory(item, new CategoryTreeItem(rs));
					}else{
						item.setCategory(rs);
					}
				}else{
					categoryManager.getTree().addRoot(new CategoryTreeItem(rs));
				}
				loading.hide();
			}
		});
		
		
	}
	@UiHandler({"specicalOfferImage"})
	void onMarketImageClick(ClickEvent event) {
		CommandFactory.popUpImageQuery(false,new SelectedCallBack() {
			@Override
			public void callBack(List<Component> selectedItems) {
				Window.alert(selectedItems.toString());
			}
		}).execute();
	}
}
