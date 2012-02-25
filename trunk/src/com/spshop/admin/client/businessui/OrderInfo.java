package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.i18n.client.DateTimeFormat;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.FlexTable;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.Label;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.AdminWorkspace;
import com.spshop.admin.client.CommandFactory;
import com.spshop.admin.client.businessui.callback.AsyncCallbackAdapter;
import com.spshop.model.Order;
import com.spshop.model.Site;

public class OrderInfo extends Composite {

    private static OrderInfoUiBinder uiBinder = GWT.create(OrderInfoUiBinder.class);
    
    private Order order;
    
    @UiField Button button;
    @UiField OrderStatusSelection orderStatus;
    @UiField FlexTable orderTable;
    @UiField FlexTable orderHeader;
    @UiField Label state;
    @UiField Label customerName;
    @UiField Label customerAddr1;
    @UiField Label customerAddr2;
    @UiField Label orderId;
    @UiField Label orderType;
    @UiField Label totalPrice;
    @UiField Label city;
    @UiField Label dePrice;
    @UiField Label currency;
    @UiField Label createDate;
    @UiField Label customerTel;
    @UiField Label customerCountry;
    @UiField Label customerEmail;
    @UiField Label customerZIP;
    @UiField Label customerMsg;
    @UiField Label customerGender;
    @UiField Label deliverCode;
    @UiField Label deliverCompany;
    @UiField Label deliverPhone;
    @UiField Label bName;
    @UiField Label bGender;
    @UiField Label bAddr1;
    @UiField Label bAddr2;
    @UiField Label bCity;
    @UiField Label bZIP;
    @UiField Label bPhone;
    @UiField HTML orderURL;
    private void populateOrderInfo(){
        DateTimeFormat dateTimeFormat = DateTimeFormat.getFormat("yy/MM/dd");
        this.customerName.setText(this.order.getCustomerName());
        this.state.setText(this.order.getState());
        this.customerAddr1.setText(this.order.getCustomerAddress());
        this.customerAddr2.setText(this.order.getCustomerAddress2());
        this.orderId.setText(this.order.getName());
        this.orderType.setText(this.order.getOrderType());
        this.totalPrice.setText(String.valueOf(this.order.getTotalPrice()));
        this.city.setText(this.order.getCity());
        this.dePrice.setText(String.valueOf(this.order.getDePrice()));
        this.currency.setText(this.order.getCurrency());
        this.createDate.setText(dateTimeFormat.format(this.order.getCreateDate()));
        this.customerTel.setText(this.order.getCustomerTelephone());
        this.customerCountry.setText(this.order.getCustomerCountry());
        this.customerEmail.setText(this.order.getCustomerEmail());
        this.customerZIP.setText(this.order.getCustomerZipcode());
        this.customerMsg.setText(this.order.getCustomerMsg());
        this.customerGender.setText(this.order.getCustomGender());
        this.deliverCode.setText(this.order.getDeliverCode());
        this.deliverCompany.setText(this.order.getDeliverCompany());
        this.deliverPhone.setText(this.order.getDeliverPhone());
        this.bName.setText(this.order.getBfirstName() + " " + this.order.getBlastName());
        this.bGender.setText(this.order.getBcustomGender());
        this.bAddr1.setText(this.order.getBcustomerAddress());
        this.bAddr2.setText(this.order.getBcustomerAddress2());
        this.bCity.setText(this.order.getBcity());
        this.bPhone.setText(this.order.getBphone());
        this.bZIP.setText(this.order.getBcustomerZipcode());
        Site site = AdminWorkspace.loginInfo.getSite();
        this.orderURL.setHTML("<a href='" + "http://" + site.getDomain() + "/orders?id=" + order.getName() + "' target='blank' style='color:red;'>Order Details</a>");
    }
    interface OrderInfoUiBinder extends UiBinder<Widget, OrderInfo> {
    }

    public OrderInfo(Order order) {
        initWidget(uiBinder.createAndBindUi(this));
        this.order = order;
        this.orderStatus.setSelectedValue(order.getStatus());
        populateOrderInfo();
        initOrderInfoHeader();
        if (this.order != null && this.order.getItems() != null && this.order.getItems().size() != 0) {
            for (int i = 0; i < this.order.getItems().size(); i++) {
                this.orderTable.setText(i, 0, this.order.getItems().get(i).getName());
                this.orderTable.setText(i, 1, this.order.getItems().get(i).getCreateDate().toString());
                this.orderTable.setText(i, 2, this.order.getItems().get(i).getProduct().getTitle());
                this.orderTable.setText(i, 3, String.valueOf(this.order.getItems().get(i).getQuantity()));
                this.orderTable.setText(i, 4, String.valueOf(this.order.getItems().get(i).getFinalPrice()));
                ShowOrderItemDetails details = new ShowOrderItemDetails(this.order.getItems().get(i));
                this.orderTable.setWidget(i, 5, details);
            }
        }
    }
    
    private void initOrderInfoHeader(){
        this.orderHeader.getColumnFormatter().setWidth(0, "150px");
        this.orderHeader.getColumnFormatter().setWidth(1, "120px");
        this.orderHeader.getColumnFormatter().setWidth(2, "170px");
        this.orderHeader.getColumnFormatter().setWidth(3, "30px");
        this.orderHeader.getColumnFormatter().setWidth(4, "40px");
        this.orderHeader.getColumnFormatter().setWidth(5, "50px");
        
        this.orderHeader.setText(0, 0, "Serial NO.");
        this.orderHeader.setText(0, 1, "Creation Date");
        this.orderHeader.setText(0, 2, "Product Name");
        this.orderHeader.setText(0, 3, "Qty.");
        this.orderHeader.setText(0, 4, "Price");
        this.orderHeader.setText(0, 5, "Details");
        
        this.orderTable.getColumnFormatter().setWidth(0, "150px");
        this.orderTable.getColumnFormatter().setWidth(1, "120px");
        this.orderTable.getColumnFormatter().setWidth(2, "170px");
        this.orderTable.getColumnFormatter().setWidth(3, "30px");
        this.orderTable.getColumnFormatter().setWidth(4, "40px");
        this.orderTable.getColumnFormatter().setWidth(5, "50px");
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
