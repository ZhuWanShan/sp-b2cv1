package com.spshop.admin.client.businessui;

import java.util.Iterator;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.ui.HasWidgets;
import com.google.gwt.user.client.ui.ResizeComposite;
import com.google.gwt.user.client.ui.TabLayoutPanel;
import com.google.gwt.user.client.ui.Widget;

public class ProdOptionItemManager extends ResizeComposite implements HasWidgets {

	private static ProdOptionItemManagerUiBinder uiBinder = GWT
			.create(ProdOptionItemManagerUiBinder.class);

	interface ProdOptionItemManagerUiBinder extends
			UiBinder<TabLayoutPanel, ProdOptionItemManager> {
	}
	
	private TabLayoutPanel host;

	public ProdOptionItemManager() {
		host = uiBinder.createAndBindUi(this);
		initWidget(host);
	}

	@Override
	public void add(Widget w) {
		this.host.add(w,"New Option Item");
	}

	@Override
	public void clear() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Iterator<Widget> iterator() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean remove(Widget w) {
		// TODO Auto-generated method stub
		return false;
	}

}
