package com.spshop.admin.client;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;

public class LoadingMasker extends Composite{

	private static LoadingMaskerUiBinder uiBinder = GWT
			.create(LoadingMaskerUiBinder.class);

	interface LoadingMaskerUiBinder extends UiBinder<Widget, LoadingMasker> {
	}

	public LoadingMasker() {
		initWidget(uiBinder.createAndBindUi(this));
	}

}
