package com.spshop.admin.client.businessui;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.i18n.client.DateTimeFormat;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.FlexTable;
import com.google.gwt.user.client.ui.Label;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.AdminWorkspace;
import com.spshop.admin.client.CommandFactory;
import com.spshop.admin.client.businessui.callback.AsyncCallbackAdapter;
import com.spshop.model.Address;
import com.spshop.model.Country;
import com.spshop.model.Order;
import com.spshop.model.Site;
import com.spshop.model.UserOption;

public class OrderInfo extends Composite {

    private static OrderInfoUiBinder uiBinder = GWT.create(OrderInfoUiBinder.class);
    
    private Order order;
    private Site site;
    private Map<String, Country> countryMap = new HashMap<String, Country>();
    
    @UiField Button button;
    @UiField OrderStatusSelection orderStatus;
    @UiField FlexTable orderTable;
    @UiField FlexTable orderHeader;
    @UiField Label orderId;
    @UiField Label totalPrice;
    @UiField Label currency;
    @UiField Label createDate;
    @UiField Label email;
    @UiField Label message;
    @UiField Label billingAddr;
    @UiField Label gender;
    @UiField Label dePrice;
    @UiField Label primaryAddr;
    private void populateOrderInfo(){
        DateTimeFormat dateTimeFormat = DateTimeFormat.getFormat("yy/MM/dd");
        this.orderId.setText(this.order.getName());
        this.totalPrice.setText(String.valueOf(this.order.getTotalPrice()));
        this.dePrice.setText(String.valueOf(this.order.getDePrice()));
        this.currency.setText(this.order.getCurrency());
        this.createDate.setText(dateTimeFormat.format(this.order.getCreateDate()));
        this.email.setText(this.order.getCustomerEmail());
        this.message.setText(this.order.getCustomerMsg());
        this.gender.setText(order.getUser().getGender());
        this.primaryAddr.setText(populateAddressString(this.order.getPrimaryAddress()));
        if (this.order.isBillingSameAsPrimary()) {
            this.billingAddr.setText(populateAddressString(this.order.getPrimaryAddress()));
        } else {
            this.billingAddr.setText(populateAddressString(this.order.getBillingAddress()));
        }
    }
    
    private String populateAddressString(Address addr){
        return addr.getFullName()+" ("+addr.getAddress1() + " " + addr.getCity() + " " + addr.getStateProvince() + " " + (this.countryMap.get(String.valueOf(addr.getCountry()))!=null?this.countryMap.get(String.valueOf(addr.getCountry())).getName():"" ) + " Postal Code:" +addr.getPostalCode() + ") Tel:" + addr.getPhone();
    }
    
    interface OrderInfoUiBinder extends UiBinder<Widget, OrderInfo> {
    }

    public OrderInfo(Order order) {
        initWidget(uiBinder.createAndBindUi(this));
        this.site = AdminWorkspace.loginInfo.getSite();
        this.order = order;
        this.orderStatus.setSelectedValue(order.getStatus());
        this.countryMap.putAll(AdminWorkspace.loginInfo.getCountryMap());
        populateOrderInfo();
        initOrderInfoHeader();
        if (this.order != null && this.order.getItems() != null && this.order.getItems().size() != 0) {
            for (int i = 0; i < this.order.getItems().size(); i++) {
                this.orderTable.setHTML(i, 0, "<ul><li>Size : "+processSize(getOptionData(this.order.getItems().get(i).getUserOptions(), "Size"), this.order.getItems().get(i).getUserOptions())+"</li><li>Closure : "+getOptionData(this.order.getItems().get(i).getUserOptions(), "Closure").getValue()+"</li><li>Color: "+processColor(getOptionData(this.order.getItems().get(i).getUserOptions(), "Color"), this.order.getItems().get(i).getUserOptions())+"</li> </ul>");
                this.orderTable.setText(i, 1, this.order.getItems().get(i).getCreateDate().toString());
                this.orderTable.setHTML(i, 2, "<a target='_blank' href='"+"http://"+site.getDomain()+"/"+this.order.getItems().get(i).getProduct().getName()+"'>"+this.order.getItems().get(i).getProduct().getTitle()+"</a>");
                this.orderTable.setText(i, 3, String.valueOf(this.order.getItems().get(i).getQuantity()));
                this.orderTable.setText(i, 4, String.valueOf(this.order.getItems().get(i).getFinalPrice()));
            }
        }
    }
    
    private UserOption getOptionData(List<UserOption> userOptions, String name){
        for (UserOption userOption : userOptions) {
            if (userOption.getName().equals(name)) {
                return userOption;
            }
        }
        return new UserOption();
    }
    
    private String processSize(UserOption userOption, List<UserOption> userOptions){
        if ("Customized".equals(userOption.getValue())) {
            return getOptionData(userOptions, "Customized Size").getValue();
        } else {
            return userOption.getValue();
        }
    }
    private String processColor(UserOption userOption, List<UserOption> userOptions){
        if ("The Same As Picture".equals(userOption.getName()) || "ASP".equals(userOption.getName()) || "The Same As Picture##ASP".equals(userOption.getName())) {
            return "The Same As Picture";
        } else {
            String[] colorArr = userOption.getValue().split("##");
            if (colorArr != null && colorArr.length != 0) {
                return colorArr[0] + ": " + "<img alt='" +colorArr[0]+ "' src='" + "http://www.honeybuy.com" + colorArr[1] + "' title='" + colorArr[0] + "' width='18' height='18'>";
            } else {
                return "";
            }
        }
    }
    
    private void initOrderInfoHeader(){
        this.orderHeader.getColumnFormatter().setWidth(0, "150px");
        this.orderHeader.getColumnFormatter().setWidth(1, "120px");
        this.orderHeader.getColumnFormatter().setWidth(2, "220px");
        this.orderHeader.getColumnFormatter().setWidth(3, "30px");
        this.orderHeader.getColumnFormatter().setWidth(4, "40px");
        
        this.orderHeader.setText(0, 0, "Serial NO.");
        this.orderHeader.setText(0, 1, "Creation Date");
        this.orderHeader.setText(0, 2, "Product Name");
        this.orderHeader.setText(0, 3, "Qty.");
        this.orderHeader.setText(0, 4, "Price");
        
        this.orderTable.getColumnFormatter().setWidth(0, "150px");
        this.orderTable.getColumnFormatter().setWidth(1, "120px");
        this.orderTable.getColumnFormatter().setWidth(2, "220px");
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
