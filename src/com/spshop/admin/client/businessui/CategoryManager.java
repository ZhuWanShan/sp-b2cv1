package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.logical.shared.SelectionEvent;
import com.google.gwt.event.logical.shared.SelectionHandler;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.HTMLPanel;
import com.google.gwt.user.client.ui.TreeItem;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.Category;

public class CategoryManager extends Composite{

	private static CategoryManagerUiBinder uiBinder = GWT
			.create(CategoryManagerUiBinder.class);
	@UiField Button newCategory;
	@UiField Button delete;
	@UiField Button newChild;
	@UiField HTMLPanel editor;
	@UiField CategoryTree tree;
	
	private Category category;
	

	interface CategoryManagerUiBinder extends UiBinder<Widget, CategoryManager> {
	}
	
	
	public CategoryManager() {
		final CategoryManager self = this;
		initWidget(uiBinder.createAndBindUi(this));
		tree.addSelectionHandler(new SelectionHandler<TreeItem>() {
			@Override
			public void onSelection(SelectionEvent<TreeItem> item) {
				CategoryTreeItem treeItem = (CategoryTreeItem) item.getSelectedItem();
				self.setCategory(treeItem.getCategory());
				editor.clear();
				editor.add(new CategoryCreation(getCategory(),self));
			}
		});
		if(null==category){
			delete.setEnabled(false);
			newChild.setEnabled(false);
		}
		tree.init();
	}
	@UiHandler("newCategory")
	void onNewCategoryClick(ClickEvent event) {
		editor.clear();
		CategoryCreation categoryCreation = new CategoryCreation(new Category(),this);
		categoryCreation.setAddRootCategory(true);
		editor.add(categoryCreation);
	}

	@UiHandler("delete")
	void onDeleteClick(ClickEvent event) {
		
	}
	
	@UiHandler("newChild")
	void onNewChildClick(ClickEvent event) {
		Category category = new Category();
		category.setParent(getCategory());
		editor.clear();
		CategoryCreation categoryCreation = new CategoryCreation(category,this);
		categoryCreation.setAddChildCategory(true);
		editor.add(categoryCreation);		
	}
	public void setCategory(Category category) {
		this.category = category;
		if(null!=category){
			delete.setEnabled(true);
			newChild.setEnabled(true);
		}
	}
	public Category getCategory() {
		return category;
	}
	public CategoryTree getTree() {
		return tree;
	}
}
