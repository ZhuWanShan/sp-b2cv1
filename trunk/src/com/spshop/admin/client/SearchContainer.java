package com.spshop.admin.client;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.logical.shared.CloseEvent;
import com.google.gwt.event.logical.shared.CloseHandler;
import com.google.gwt.event.logical.shared.OpenEvent;
import com.google.gwt.event.logical.shared.OpenHandler;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.DisclosurePanel;
import com.google.gwt.user.client.ui.Grid;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.businessui.EventDrivenComposite;
import com.spshop.admin.client.event.ResizeSearchPanelEvent;
import com.spshop.admin.client.event.SearchEvent;

public class SearchContainer extends EventDrivenComposite<SearchEvent>{

	private static SearchContainerUiBinder uiBinder = GWT
			.create(SearchContainerUiBinder.class);
	@UiField Grid stardardCriteriaPanel;
	@UiField Grid searchAdvanceContainer;
	@UiField DisclosurePanel disclosurePanel;

	interface SearchContainerUiBinder extends UiBinder<Widget, SearchContainer> {
	}

	public SearchContainer() {
		initWidget(uiBinder.createAndBindUi(this));
		disclosurePanel.addCloseHandler(new CloseHandler<DisclosurePanel>() {
			
			@Override
			public void onClose(CloseEvent<DisclosurePanel> e) {
				getEventBus().fireEvent(new ResizeSearchPanelEvent(80));
			}
		});
		
		disclosurePanel.addOpenHandler(new OpenHandler<DisclosurePanel>() {
			
			@Override
			public void onOpen(OpenEvent<DisclosurePanel> e) {
				getEventBus().fireEvent(new ResizeSearchPanelEvent(160));
			}
		});
	}

	@Override
	public void setComponent(SearchEvent component) {
		
	}
}
