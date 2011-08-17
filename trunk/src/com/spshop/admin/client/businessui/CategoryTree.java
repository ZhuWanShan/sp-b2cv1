package com.spshop.admin.client.businessui;

import java.util.ArrayList;
import java.util.List;

import com.google.gwt.user.client.ui.Tree;
import com.spshop.admin.client.AdminWorkspace;
import com.spshop.admin.client.businessui.callback.AsyncCallbackAdapter;
import com.spshop.model.Category;

public class CategoryTree extends Tree {
	
	
	final List<Category> categories = new ArrayList<Category>();
	public CategoryTree() {
	}
	public void init() {
		final CategoryTree self= this;
		AdminWorkspace.ADMIN_SERVICE_ASYNC
				.getAllCategory(new AsyncCallbackAdapter<List<Category>>() {
						@Override
						public void onSuccess(List<Category> rs) {
							if(null!=rs){
								categories.addAll(rs);
								for(Category category : rs){
									CategoryTreeItem item = new CategoryTreeItem(category);
									self.addItem(item);
								}
							}
						}
				});
	}
	
	
	public void addRoot(CategoryTreeItem item){
		categories.add(item.getCategory());
		addItem(item);
	}
	
	public void addCategory(CategoryTreeItem parent,CategoryTreeItem child){
		parent.getCategory().getSubCategories().add(child.getCategory());
		parent.addItem(child);
	}
	
	/*public void update(Category category){
		final CategoryTreeItem selecetedItem =((CategoryTreeItem)getSelectedItem());
		final CategoryTree self = this;
		final boolean isAdd = category.getId()==0;
		AdminWorkspace.ADMIN_SERVICE_ASYNC.saveCategory(category, new AsyncCallbackAdapter<Category>(){
			@Override
			public void onSuccess(Category rs) {
				if(isAdd){
					if(null==rs.getParent()){
						categories.add(rs);
						self.addItem(new CategoryTreeItem(rs));
					}else{
						selecetedItem.addItem(new CategoryTreeItem(rs));
					}
				}else{
					selecetedItem.setCategory(rs);
				}
			}
		});
	}*/
	
	
}
