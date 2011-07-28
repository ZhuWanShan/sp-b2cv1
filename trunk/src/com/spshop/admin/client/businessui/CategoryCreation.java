package com.spshop.admin.client.businessui;

import java.util.Date;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.AdminWorkspace;
import com.spshop.admin.client.AsyncCallbackAdapter;
import com.spshop.admin.client.PopWindow;
import com.spshop.model.Category;

public class CategoryCreation extends Composite {
	
	private Category category;
	private CategoryManager categoryManager;

	private static CategoryCreationUiBinder uiBinder = GWT
			.create(CategoryCreationUiBinder.class);
	@UiField TextBox name;
	@UiField TextBox displayName;
	@UiField Button button;
	private boolean addChild=false;
	

	interface CategoryCreationUiBinder extends
			UiBinder<Widget, CategoryCreation> {
	}

	public CategoryCreation(Category category,CategoryManager categoryManager) {
		initWidget(uiBinder.createAndBindUi(this));
		setCategory(category);
		this.categoryManager = categoryManager;
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
}
