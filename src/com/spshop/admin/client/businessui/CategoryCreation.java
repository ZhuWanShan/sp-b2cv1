package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.Category;

public class CategoryCreation extends Composite {
	
	private Category category;
	private CategoryManager categoryManager;

	private static CategoryCreationUiBinder uiBinder = GWT
			.create(CategoryCreationUiBinder.class);
	@UiField TextBox name;
	@UiField TextBox displayName;
	@UiField Button button;
	

	interface CategoryCreationUiBinder extends
			UiBinder<Widget, CategoryCreation> {
	}

	public CategoryCreation(Category category,CategoryManager categoryManager) {
		initWidget(uiBinder.createAndBindUi(this));
		setCategory(category);
		this.categoryManager = categoryManager;
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
		category.setName(name.getValue());
		category.setDisplayName(displayName.getValue());
		categoryManager.tree.update(category);
		button.setEnabled(false);
	}
}
