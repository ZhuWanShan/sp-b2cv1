package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;

public class DashboardSellingManager extends Composite {

	private static DashboardSellingManagerUiBinder uiBinder = GWT
			.create(DashboardSellingManagerUiBinder.class);

	interface DashboardSellingManagerUiBinder extends
			UiBinder<Widget, DashboardSellingManager> {
	}

	public DashboardSellingManager() {
		initWidget(uiBinder.createAndBindUi(this));
	}

}
