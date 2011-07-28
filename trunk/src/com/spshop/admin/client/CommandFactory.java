package com.spshop.admin.client;


import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.HTMLPanel;
import com.spshop.admin.client.businessui.CategoryManager;
import com.spshop.admin.client.businessui.ComponentQuery;
import com.spshop.admin.client.businessui.ImageCreation;
import com.spshop.admin.client.businessui.ProductCreation;
import com.spshop.admin.client.businessui.SelectedCallBack;
import com.spshop.model.Image;
import com.spshop.model.ImageSizeType;
import com.spshop.model.ImageType;

public class CommandFactory {
	public static Command createProduct(){
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				AdminWorkspace.contentPanel.body.add(new ProductCreation());
			}
		};
	}
	
	public static Command createImage(){
		return new CommandAdapter() {
			@Override
			public void execute() {
				//Window.alert("Create Image");
				AdminWorkspace.contentPanel.body.clear();
				Image image =new Image();
				image.setSizeType(ImageSizeType.PRODUCT_NORMAL);
				image.setType(ImageType.INTERNAL);
				AdminWorkspace.contentPanel.body.add(new ImageCreation(image));
			}
		};
	}
	
	public static Command categoryManager(){
		return new CommandAdapter() {
			@Override
			public void execute() {
				//Window.alert("Create Image");
				AdminWorkspace.contentPanel.body.clear();
				AdminWorkspace.contentPanel.body.add(new CategoryManager());
			}
		};
	}
	
	public static Command emptyCommand(){
		return new CommandAdapter() {
			@Override
			public boolean isEmpty() {
				return true;
			}
		};
	}

	public static Command queryImage() {
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				ComponentQuery componentQuery = new ComponentQuery("Image Query",Image.class);
				componentQuery.getQueryCondition().setAsc(false);
				componentQuery.getQueryCondition().setOrderBy("createDate");
				AdminWorkspace.contentPanel.body.add(componentQuery);
			}
		};
	}
	
	public static Command popUpImageQuery(boolean multiSelect,final SelectedCallBack callBack) {
		return new CommandAdapter() {
			@Override
			public void execute() {
				final ComponentQuery componentQuery = new ComponentQuery("Image Query",Image.class);
				componentQuery.getQueryCondition().setAsc(false);
				componentQuery.getQueryCondition().setOrderBy("createDate");
				HTMLPanel content = new HTMLPanel("<div></div>");
				content.setSize("850px", "500px");
				content.clear();
				content.add(componentQuery);
				Button button = new Button("Select");
				
				final PopWindow popWindow = new PopWindow("Query Image", content, true, true);
				button.addClickHandler(new ClickHandler() {
					@Override
					public void onClick(ClickEvent e) {
						callBack.callBack(componentQuery.getSelected());
						popWindow.hide();
					}
				});
				popWindow.addButton(button);
				popWindow.center();
				
			}
		};
	}
	
}
