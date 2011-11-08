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
import com.google.gwt.user.client.ui.FlexTable;

public class OrderInfo extends Composite {

    private static OrderInfoUiBinder uiBinder = GWT.create(OrderInfoUiBinder.class);
    
    private Order order;
    
    @UiField Button button;
    @UiField OrderStatusSelection orderStatus;
    @UiField FlexTable orderTable;
    @UiField FlexTable orderHeader;

    interface OrderInfoUiBinder extends UiBinder<Widget, OrderInfo> {
    }

    public OrderInfo(Order order) {
        initWidget(uiBinder.createAndBindUi(this));
        this.order = order;
        this.orderStatus.setSelectedValue(order.getStatus());
        initOrderInfoHeader();
        if (this.order != null && this.order.getItems() != null && this.order.getItems().size() != 0) {
            for (int i = 0; i < this.order.getItems().size(); i++) {
                this.orderTable.setText(i, 0, this.order.getItems().get(i).getName());
                this.orderTable.setText(i, 1, this.order.getItems().get(i).getCreateDate().toString());
                this.orderTable.setText(i, 2, this.order.getItems().get(i).getProduct().getTitle());
                this.orderTable.setText(i, 3, String.valueOf(this.order.getItems().get(i).getQuantity()));
                this.orderTable.setText(i, 4, String.valueOf(this.order.getItems().get(i).getFinalPrice()));
            }
        }
    }
    
    private void initOrderInfoHeader(){
        this.orderHeader.getColumnFormatter().setWidth(0, "200px");
        this.orderHeader.getColumnFormatter().setWidth(1, "120px");
        this.orderHeader.getColumnFormatter().setWidth(2, "170px");
        this.orderHeader.getColumnFormatter().setWidth(3, "30px");
        this.orderHeader.getColumnFormatter().setWidth(4, "40px");
        
        this.orderHeader.setText(0, 0, "Serial NO.");
        this.orderHeader.setText(0, 1, "Creation Date");
        this.orderHeader.setText(0, 2, "Product Name");
        this.orderHeader.setText(0, 3, "Qty.");
        this.orderHeader.setText(0, 4, "Price");
        
        this.orderTable.getColumnFormatter().setWidth(0, "200px");
        this.orderTable.getColumnFormatter().setWidth(1, "120px");
        this.orderTable.getColumnFormatter().setWidth(2, "170px");
        this.orderTable.getColumnFormatter().setWidth(3, "30px");
        this.orderTable.getColumnFormatter().setWidth(4, "40px");
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
