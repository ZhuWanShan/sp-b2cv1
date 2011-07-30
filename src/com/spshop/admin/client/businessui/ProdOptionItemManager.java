package com.spshop.admin.client.businessui;

import java.util.ArrayList;
import java.util.List;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.VerticalPanel;
import com.spshop.admin.client.ProductionOptionItemCreation;
import com.spshop.model.ProductOptionItem;

public class ProdOptionItemManager extends Composite{

	private static ProdOptionItemManagerUiBinder uiBinder = GWT
			.create(ProdOptionItemManagerUiBinder.class);
	@UiField VerticalPanel host;
	private List<ProductOptionItem> optionItems;
	interface ProdOptionItemManagerUiBinder extends
			UiBinder<VerticalPanel, ProdOptionItemManager> {
	}
	public ProdOptionItemManager() {
		host = uiBinder.createAndBindUi(this);
		initWidget(host);
	}
	
	public void setOptionItems(List<ProductOptionItem> items){
		if(null!=optionItems){
			optionItems = new ArrayList<ProductOptionItem>();
		}else{
			optionItems = items;
		}
		int wgtCount = host.getWidgetCount();
		
		while(wgtCount>1){
			host.remove(1);
		}
		
		for(ProductOptionItem item:optionItems){
			host.add(new ProductionOptionItemCreation(item));
		}
	}
	
	public void addOptionItem(ProductOptionItem item){
		if(!haveSameOption(item)){
			optionItems.add(item);
			host.add(new ProductionOptionItemCreation(item));
		}
	}

	public List<ProductOptionItem> getOptionItems() {
		return optionItems;
	}
	
	private boolean haveSameOption(ProductOptionItem item){
		for(ProductOptionItem it:optionItems){
			if(it!=item&&it.getName().equals(item.getName())){
				return true;
			}
		}
		return false;
	}
	
}
