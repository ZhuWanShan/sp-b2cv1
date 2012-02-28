package com.spshop.admin.client;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.logical.shared.ValueChangeEvent;
import com.google.gwt.event.logical.shared.ValueChangeHandler;
import com.google.gwt.event.shared.HandlerManager;
import com.google.gwt.resources.client.ClientBundle;
import com.google.gwt.resources.client.ImageResource;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.Command;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.DecoratedPopupPanel;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.HTMLPanel;
import com.google.gwt.user.client.ui.Image;
import com.google.gwt.user.client.ui.MenuBar;
import com.google.gwt.user.client.ui.MenuItem;
import com.google.gwt.user.client.ui.PopupPanel;
import com.google.gwt.user.client.ui.SplitLayoutPanel;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.businessui.CouponCreation;
import com.spshop.admin.client.businessui.service.AdminServiceAsync;
import com.spshop.admin.client.event.AddNewCouponEvent;
import com.spshop.admin.client.event.AddNewCouponHandler;
import com.spshop.admin.client.event.LoadingEvent;
import com.spshop.admin.client.event.LoadingHandler;
import com.spshop.admin.client.event.ResizeSearchPanelEvent;
import com.spshop.admin.client.event.ResizeSearchPanelHandler;
import com.google.gwt.user.client.ui.ScrollPanel;

public class Workspace2 extends Composite implements ValueChangeHandler<String> {

	@UiField HTMLPanel statusBar;
	@UiField MenuBar menuBar;
	@UiField HTMLPanel container;
	@UiField SearchContainer searchContainer;
	@UiField SplitLayoutPanel searchSplitPanel;
	@UiField ScrollPanel containerScroll;
	private Image loading;
	private HandlerManager eventBus = new HandlerManager(this);
	private AdminServiceAsync adminService;
	private CouponCreation couponCreation;
	private final PopupPanel loadingPanel = new PopupPanel();
	private final LoadingMasker loadingMasker = new LoadingMasker();
	
	private static Workspace2UiBinder uiBinder = GWT
			.create(Workspace2UiBinder.class);
	
	interface Resources extends ClientBundle{
		@Source("image/loading-animation.gif")
		ImageResource loading();
	}

	interface Workspace2UiBinder extends UiBinder<Widget, Workspace2> {
	}

	public Workspace2() {
		initWidget(uiBinder.createAndBindUi(this));
		initMenuBar();
		
		loadingPanel.setWidget(loadingMasker);
		
		searchContainer.setEventBus(getEventBus());
		searchContainer.setService(getAdminService());
		Resources resources = GWT.create(Resources.class);
		loading = new Image(resources.loading());
		
		//register handlers
		eventBus.addHandler(AddNewCouponEvent.TYPE, new AddNewCouponHandler() {
			@Override
			public void onAddCoupon(AddNewCouponEvent event) {
				setStatus("Add new Coupon");
				container.add(new LoadingMasker());
			}
		});
		eventBus.addHandler(ResizeSearchPanelEvent.TYPE, new ResizeSearchPanelHandler() {
			
			@Override
			public void onResize(ResizeSearchPanelEvent event) {
				searchSplitPanel.setWidgetSize(searchContainer, event.getHeight());
			}
		});
		
		eventBus.addHandler(LoadingEvent.TYPE, new LoadingHandler() {
			
			@Override
			public void onLoading(LoadingEvent event) {
				Widget source = event.getSource();
				 int left = source.getAbsoluteLeft();
		         int top = source.getAbsoluteTop();
		         int width = source.getOffsetWidth();
		         int height = source.getOffsetHeight();
		         
        		 loadingMasker.setSize(width+"px", height+"px");
		         loadingPanel.setWidget(loadingMasker);
		         loadingPanel.setPopupPosition(left, top);
		         
		         loadingPanel.show();
			}
		});
	}
	
	public CouponCreation getCouponCreation(){

		if(null == couponCreation){
			couponCreation = new CouponCreation(getEventBus(), adminService);
		}
		return couponCreation;
	}
	
	private void initMenuBar() {
		
		menuBar.setAutoOpen(true);
		MenuBar couponBar = new MenuBar(true);
		MenuItem newCoupon = new MenuItem("Coupon", new Command() {
			@Override
			public void execute() {
				getEventBus().fireEvent(new AddNewCouponEvent());
				getEventBus().fireEvent(new LoadingEvent(containerScroll));
			}
		});
		couponBar.addItem(newCoupon);
		MenuItem componentItem = new MenuItem("Create",couponBar);
		menuBar.addItem(componentItem);
	}

	protected void loading() {
		statusBar.clear();
		statusBar.add(loading);
	}

	public void setStatus(String html){
		statusBar.clear();
		statusBar.add(new HTML(html));
	}
	
	public HandlerManager getEventBus(){
		return eventBus;
	}
	
	@Override
	public void onValueChange(ValueChangeEvent<String> arg0) {
		
	}

	public AdminServiceAsync getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminServiceAsync adminService) {
		this.adminService = adminService;
	}
	
}
