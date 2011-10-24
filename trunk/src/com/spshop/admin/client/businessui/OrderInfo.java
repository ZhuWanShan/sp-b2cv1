package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.AdminWorkspace;
import com.spshop.admin.client.CommandFactory;
import com.spshop.admin.client.businessui.callback.AsyncCallbackAdapter;
import com.spshop.model.Order;

public class OrderInfo extends Composite {

    private static OrderInfoUiBinder uiBinder = GWT.create(OrderInfoUiBinder.class);
    
    private Order order;
    
    @UiField Button button;
    @UiField OrderStatusSelection orderStatus;

    interface OrderInfoUiBinder extends UiBinder<Widget, OrderInfo> {
    }

    public OrderInfo(Order order) {
        initWidget(uiBinder.createAndBindUi(this));
        this.order = order;
        this.orderStatus.setSelectedValue(order.getStatus());
    }

    public void setOrder(Order order) {
        this.order = order;
        this.orderStatus.setSelectedValue(order.getStatus());
    }

    public Order getOrder() {
        return order;
    }

    @UiHandler("button")
    void onButtonClick(ClickEvent event) {
        CommandFactory.lock("Save Order Status").execute();
        this.order.setStatus(this.orderStatus.getSelectedValue());
        AdminWorkspace.ADMIN_SERVICE_ASYNC.updateOrderStatus(order, new AsyncCallbackAdapter<Order>() {
            @Override
            public void onSuccess(Order result) {
                setOrder(result);
                CommandFactory.release().execute();
            }
        });
    }
}
