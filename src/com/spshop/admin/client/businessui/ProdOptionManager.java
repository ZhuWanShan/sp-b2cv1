package com.spshop.admin.client.businessui;

import java.util.ArrayList;
import java.util.List;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.ResizeComposite;
import com.google.gwt.user.client.ui.TabLayoutPanel;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.ProductOption;

public class ProdOptionManager extends ResizeComposite{
	
	//private TreeMap<String, ProductOption> options = new TreeMap<String, ProductOption>();
	private List<ProductOption> options = new ArrayList<ProductOption>();
	private static ProdOptionManagerUiBinder uiBinder = GWT
			.create(ProdOptionManagerUiBinder.class);

	interface ProdOptionManagerUiBinder extends
			UiBinder<Widget, ProdOptionManager> {
	}
	
	@UiField
	TabLayoutPanel host;
	
	public ProdOptionManager() {
		initWidget(uiBinder.createAndBindUi(this));
	}
	
	public void addOptions(List<ProductOption> options){
		for (ProductOption productOption : options) {
			add(productOption);
		}
	}
	
	public boolean add(ProductOption option) {
		if(!containsOption(option)){
			ProductOptionCreation creation =  new ProductOptionCreation(option);
			creation.addChangeListener(new ProductOptionCreation.OptionChangeListener() {
				@Override
				public void onChange(ProductOption option, ProductOptionCreation create) {
					if(containsOption(option)){
						Window.alert("Option Exit!");
					}else{
						host.setTabHTML(options.indexOf(option), option.getName());
					}
				}
			});
			host.add(creation,option.getName());
			options.add(option);
			return true;
		}
		return false;
	}
	
	public boolean containsOption(ProductOption option){
		for(ProductOption op : options){
			if(op.getName().equals(option.getName())){
				return true;
			}
		}
		return false;
	}
	
	public ProductOption getOption(String option){
		for(ProductOption op : options){
			if(op.getName().equals(option)){
				return op;
			}
		}
		return null;
	}
}
