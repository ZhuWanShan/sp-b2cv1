package com.spshop.admin.client;


import java.util.Date;

import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.HTMLPanel;
import com.google.gwt.user.client.ui.RootPanel;
import com.spshop.admin.client.businessui.CategoryManager;
import com.spshop.admin.client.businessui.ComponentQuery;
import com.spshop.admin.client.businessui.DashboardSellingManager;
import com.spshop.admin.client.businessui.HTMLCreation;
import com.spshop.admin.client.businessui.ImageBatchCreation;
import com.spshop.admin.client.businessui.ImageCreation;
import com.spshop.admin.client.businessui.ProductCreation;
import com.spshop.admin.client.businessui.SiteManager;
import com.spshop.admin.client.businessui.TopSellingManager;
import com.spshop.admin.client.businessui.callback.AsyncCallbackAdapter;
import com.spshop.admin.client.businessui.callback.SelectedCallBack;
import com.spshop.model.Image;
import com.spshop.model.Product;
import com.spshop.model.TabProduct;
import com.spshop.model.TabSelling;
import com.spshop.model.enums.ImageSizeType;
import com.spshop.model.enums.ImageType;

public class CommandFactory {
	
	private static PopWindow loading ;
	private static PopWindow error ;
	
	public static Command createProduct(){
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				ProductCreation creation = new ProductCreation(new Product());
				AdminWorkspace.contentPanel.body.add(creation);
			}
		};
	}
	
	public static Command createImage(){
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				Image image =new Image();
				image.setSizeType(ImageSizeType.PRODUCT_NORMAL);
				image.setType(ImageType.INTERNAL);
				AdminWorkspace.contentPanel.body.add(new ImageCreation(image));
			}
		};
	}
	
	public static Command createBatchImage(){
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				AdminWorkspace.contentPanel.body.add(new ImageBatchCreation());
			}
		};
	}
	
	public static Command categoryManager(){
		return new CommandAdapter() {
			@Override
			public void execute() {
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
	
	public static Command popUpImageQuery(final boolean multiSelect,final SelectedCallBack callBack) {
		return new CommandAdapter() {
			@Override
			public void execute() {
				final ComponentQuery componentQuery = new ComponentQuery("Image Query",Image.class);
				componentQuery.getQueryCondition().setAsc(false);
				componentQuery.setEnableMultiSelect(multiSelect);
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
	
	public static Command popUpQueryProduct(final boolean multiSelect,final SelectedCallBack callBack) {
		return new CommandAdapter() {
			@Override
			public void execute() {
				final ComponentQuery componentQuery = new ComponentQuery("Product Query",Product.class);
				componentQuery.getQueryCondition().setAsc(false);
				componentQuery.setEnableMultiSelect(multiSelect);
				componentQuery.getQueryCondition().setOrderBy("createDate");
				HTMLPanel content = new HTMLPanel("<div></div>");
				content.setSize("850px", "500px");
				content.clear();
				content.add(componentQuery);
				Button button = new Button("Select");
				
				final PopWindow popWindow = new PopWindow("Product Query", content, true, true);
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

	public static Command queryProduct() {
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				ComponentQuery componentQuery = new ComponentQuery("Product Query",Product.class);
				componentQuery.getQueryCondition().setAsc(false);
				componentQuery.getQueryCondition().setOrderBy("createDate");
				AdminWorkspace.contentPanel.body.add(componentQuery);
			}
		};
	}
	
	
	
	private static void loading(String title){
		if(null!=loading){
			loading.hide();
		}
		loading=PopWindow.createLoading(title);
		loading.setHTML("Processing...");
		loading.center();
	}
	
	private static void error(String title,String msg){
		unloading();
		if(null!=error){
			error.hide();
		}
		error=new PopWindow(title, new HTML(msg), true, true);
		error.center();
	}
	
	private static void unloading(){
		if(null!=loading){
			loading.hide();
		}
	}
	
	public static Command lock(final String title) {
		return new CommandAdapter() {
			@Override
			public void execute() {
				loading(title);
			}
			
		};
	}
	
	public static Command onError(final String title,final String msg) {
		return new CommandAdapter() {
			@Override
			public void execute() {
				error(title,msg);
			}
			
		};
	}
	
	public static Command release() {
		return new CommandAdapter() {
			@Override
			public void execute() {
				unloading();
			}
			
		};
	}

	public static Command siteManager() {
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				SiteManager siteManager = new SiteManager();
				AdminWorkspace.contentPanel.body.add(siteManager);
			}
		};
	}
	
	public static Command topSelingManager() {
		return new CommandAdapter() {
			@Override
			public void execute() {
				final PopWindow popWindow = PopWindow.createLoading("Loading").lock();
				AdminWorkspace.contentPanel.body.clear();
				final TopSellingManager topSellingManager = new TopSellingManager();
				topSellingManager.setShowName(false);
				CommandFactory.lock("Process").execute();
				AdminWorkspace.ADMIN_SERVICE_ASYNC.getTopSelling(new AsyncCallbackAdapter<TabProduct>(){
					@Override
					public void onSuccess(TabProduct rs) {
						topSellingManager.setComponent(rs);
						popWindow.hide();
						RootPanel.get().remove(popWindow);
					}
				});
				AdminWorkspace.contentPanel.body.add(topSellingManager);
			}
		};
	}
	
	public static Command dashboardSellingManager() {
		return new CommandAdapter() {
			@Override
			public void execute() {
				final PopWindow popWindow = PopWindow.createLoading("Loading").lock();
				AdminWorkspace.contentPanel.body.clear();
				final DashboardSellingManager dashboardSellingManager = new DashboardSellingManager();
				AdminWorkspace.contentPanel.body.add(dashboardSellingManager);
				AdminWorkspace.ADMIN_SERVICE_ASYNC.getDefaulTabSelling(new AsyncCallbackAdapter<TabSelling>(){
					@Override
					public void onSuccess(TabSelling rs) {
						dashboardSellingManager.setComponent(rs);
						popWindow.hide();
						RootPanel.get().remove(popWindow);
					}
				});
				
			}
		};
	}

	public static Command createHTML() {
		return new CommandAdapter() {
			@Override
			public void execute() {
				final PopWindow popWindow = PopWindow.createLoading("Loading").lock();
				AdminWorkspace.contentPanel.body.clear();
				final HTMLCreation htmlCreation = new HTMLCreation();
				com.spshop.model.HTML html = new com.spshop.model.HTML();
				html.setCreateDate(new Date());
				htmlCreation.setComponent(html);
				AdminWorkspace.contentPanel.body.add(htmlCreation);
				popWindow.hide();
				RootPanel.get().remove(popWindow);
			}
		};
	}

	public static Command queryHTML() {
		return new CommandAdapter() {
			@Override
			public void execute() {
				AdminWorkspace.contentPanel.body.clear();
				ComponentQuery componentQuery = new ComponentQuery("HTML Query",com.spshop.model.HTML.class);
				componentQuery.getQueryCondition().setAsc(false);
				componentQuery.getQueryCondition().setOrderBy("createDate");
				AdminWorkspace.contentPanel.body.add(componentQuery);
			}
		};
	}
	
}
