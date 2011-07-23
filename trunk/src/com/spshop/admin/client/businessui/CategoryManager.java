package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.TabLayoutPanel;

public class CategoryManager extends Composite{

	private static CategoryManagerUiBinder uiBinder = GWT
			.create(CategoryManagerUiBinder.class);

	interface CategoryManagerUiBinder extends UiBinder<TabLayoutPanel, CategoryManager> {
	}

	public CategoryManager() {
		initWidget(uiBinder.createAndBindUi(this));
	}
}
