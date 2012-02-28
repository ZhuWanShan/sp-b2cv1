package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.event.shared.HandlerManager;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.businessui.service.AdminServiceAsync;
import com.spshop.admin.client.event.ToolBar;
import com.spshop.model.Coupon;

public class CouponCreation extends EventDrivenComposite<Coupon>{

	private static CouponCreationUiBinder uiBinder = GWT
			.create(CouponCreationUiBinder.class);
	
	private Coupon coupon;
	private ToolBar toolBar;

	interface CouponCreationUiBinder extends UiBinder<Widget, CouponCreation> {
	}

	public CouponCreation() {
		initWidget(uiBinder.createAndBindUi(this));
	}
	
	public CouponCreation(HandlerManager eventBus, AdminServiceAsync adminServiceAsync) {
		initWidget(uiBinder.createAndBindUi(this));
		this.eventBus = eventBus;
		this.serviceAsync = adminServiceAsync;
		initToolBar();
	}

	public Coupon getCoupon() {
		return coupon;
	}

	public void setCoupon(Coupon coupon) {
		this.coupon = coupon;
	}

	@Override
	public void setComponent(Coupon component) {
		
	}

	public void initToolBar(){
		toolBar.onSave(new ClickHandler() {
			
			@Override
			public void onClick(ClickEvent arg0) {
				Window.alert("asdasda");
			}
		});
		
		toolBar.onDelete(new ClickHandler() {
			@Override
			public void onClick(ClickEvent arg0) {
				Window.alert("D");
			}
		});
	}

}
