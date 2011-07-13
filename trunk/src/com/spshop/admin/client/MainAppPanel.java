package com.spshop.admin.client;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ChangeEvent;
import com.google.gwt.event.dom.client.ChangeHandler;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.event.dom.client.KeyUpEvent;
import com.google.gwt.event.dom.client.KeyUpHandler;
import com.google.gwt.event.logical.shared.ResizeEvent;
import com.google.gwt.event.logical.shared.ResizeHandler;
import com.google.gwt.event.logical.shared.ValueChangeEvent;
import com.google.gwt.event.logical.shared.ValueChangeHandler;
import com.google.gwt.i18n.client.DateTimeFormat;
import com.google.gwt.user.client.Command;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.rpc.AsyncCallback;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.HorizontalPanel;
import com.google.gwt.user.client.ui.Label;
import com.google.gwt.user.client.ui.ListBox;
import com.google.gwt.user.client.ui.MenuBar;
import com.google.gwt.user.client.ui.MenuItem;
import com.google.gwt.user.client.ui.ScrollPanel;
import com.google.gwt.user.client.ui.SplitLayoutPanel;
import com.google.gwt.user.client.ui.TextBox;
import com.google.gwt.user.client.ui.VerticalPanel;
import com.google.gwt.user.client.ui.Widget;
import com.google.gwt.user.datepicker.client.DateBox;
import com.spshop.model.QueryCriteria;
import com.spshop.model.Component;
import com.spshop.model.ShopMenu;

public class MainAppPanel {
	
	private final VerticalPanel main = new VerticalPanel();
	
	private int contentHeight;
	
	//menus
	private final HorizontalPanel globalNavPanel = new HorizontalPanel();
	private final List<ShopMenu> menus = new  ArrayList<ShopMenu>();
	private final MenuBar menuBar = new MenuBar();
	
	//content panels
	private SplitLayoutPanel conentPanel = new SplitLayoutPanel();
	private VerticalPanel queryPanel = new VerticalPanel();
	private VerticalPanel editor = new VerticalPanel();
	
	private final QueryContainer queryContainer =  new QueryContainer();
	
	//root
	private final HorizontalPanel rootPanel = new HorizontalPanel();
	
	
	//query panel
	private QueryCriteria queryCriteria = new QueryCriteria(20);
	
	private QueryServiceAsync queryService = GWT.create(QueryService.class);
	
	private void mockData() {
		
		//menus
		ShopMenu create = new ShopMenu("Create","");
		
		ShopMenu image = new ShopMenu("Image","");
		
		ShopMenu suit = new ShopMenu("Suit","");
		
		ShopMenu suit1 = new ShopMenu("Suit1","");
		
		ShopMenu suit2 = new ShopMenu("Suit2","");
		
		ShopMenu suit3 = new ShopMenu("Suit3","");
		
		suit.getSubList().add(suit1);
		suit.getSubList().add(suit2);
		suit.getSubList().add(suit3);
		
		ShopMenu options = new ShopMenu("Options","");
		
		create.getSubList().add(image);
		create.getSubList().add(suit);
		create.getSubList().add(options);
		
		ShopMenu order = new ShopMenu("Order","");
		
		ShopMenu account = new ShopMenu("Accout","");
		
		menus.add(create);
		menus.add(order);
		menus.add(account);
		
		
	}
	
	private void initMenu(){
		globalNavPanel.setStyleName("globalNavPanel");
		//menus
		for(ShopMenu menu : menus){
			addMenuBar(menuBar,menu);
		}
		globalNavPanel.add(menuBar);
		main.add(globalNavPanel);
	}
	
	private void initContentPanel(){
		contentHeight =(int) (Window.getClientHeight()*0.88);
		conentPanel.setStyleName("conentPanel");
		queryPanel.setStyleName("queryPanel");
		
		editor.setStyleName("editorPanel");
		
		conentPanel.setHeight(contentHeight+"px");
		conentPanel.addWest(new ScrollPanel(queryPanel), 500);
		conentPanel.add(new ScrollPanel(editor));
		main.add(conentPanel);
		
		//initQuery Panel
		initQueryPanel();
		
		Window.addResizeHandler(new ResizeHandler() {
			public void onResize(ResizeEvent event) {
				contentHeight = (int) (Window.getClientHeight()*0.88);
				conentPanel.setHeight(contentHeight+"px");
			}
		});
	}
	
	@SuppressWarnings("deprecation")
	private void initSearchPanel(){

		 DateTimeFormat dateFormat = DateTimeFormat.getLongDateFormat();
		 
		final DateBox startDate = new DateBox();
		startDate.setFormat(new DateBox.DefaultFormat(dateFormat));
		startDate.addValueChangeHandler(new ValueChangeHandler<Date>() {
			public void onValueChange(ValueChangeEvent<Date> event) {
				queryCriteria.setStart(event.getValue());
			}
		});
		
	    final DateBox endDate = new DateBox();
	    endDate.setFormat(new DateBox.DefaultFormat(dateFormat));
	    endDate.addValueChangeHandler(new ValueChangeHandler<Date>() {
			public void onValueChange(ValueChangeEvent<Date> event) {
				queryCriteria.setEnd(event.getValue());
			}
		});
	    
		HorizontalPanel queryCondidtionWrap = new HorizontalPanel();
		queryCondidtionWrap.setWidth("100%");
		queryCondidtionWrap.setStyleName("queryCondidtionPanel");
		
		HorizontalPanel queryCondidtion = new HorizontalPanel();
		queryCondidtionWrap.add(queryCondidtion);
		
		queryCondidtion.add(new Label("Category:"));
		final ListBox item = new ListBox();
		item.addItem("Image");
		item.addItem("Suits");
		item.addItem("orders");
		item.setSelectedIndex(1);
		queryCriteria.setCategory(item.getValue(item.getSelectedIndex()));
		queryCondidtion.add(item);
		
		item.addChangeHandler(new ChangeHandler() {
			public void onChange(ChangeEvent event) {
				queryCriteria.setCategory(item.getValue(item.getSelectedIndex()));
			}
		});
		
		queryCondidtion.add(new Label("Keyword:"));
		final TextBox keywordBox = new TextBox();
		keywordBox.addKeyUpHandler(new KeyUpHandler() {
			public void onKeyUp(KeyUpEvent event) {
				queryCriteria.setKey(keywordBox.getValue());
			}
		});
		queryCondidtion.add(keywordBox);
		
		queryCondidtion.add(new Label("Start:"));
		queryCondidtion.add(startDate);
		
		queryCondidtion.add(new Label("End:"));
		queryCondidtion.add(endDate);
		
		Button search = new Button("Search");
		search.addClickHandler(new ClickHandler() {
			
			public void onClick(ClickEvent event) {
				queryService.greetServer(queryCriteria,new AsyncCallback<QueryResult<Component>>() {

					public void onSuccess(QueryResult<Component> result) {
						queryCriteria.setStartIndex(0);
						queryContainer.setCriteria(queryCriteria);
						queryContainer.refreshPage(result, 1);
					}
					
					public void onFailure(Throwable caught) {
						Window.alert("Falure");
					}
				});
			}
		});
		
		queryCondidtion.add(search);
		
		queryCondidtionWrap.setHeight("30px");
		
		queryPanel.add(queryCondidtionWrap);
	}
	
	private void initQueryPanel() {
		initSearchPanel();
		queryPanel.add(queryContainer.getUI());
}

	private void initRoot(){
		rootPanel.setStyleName("rootPanel");
		rootPanel.add(new Label("© 2011 Spark, Inc.Privacy PolicyTerms of UseContact Us"));
		main.add(rootPanel);
	}

	
	private void addMenuBar(final MenuBar source, final ShopMenu menu){
		if(null!=menu.getSubList()&&!menu.getSubList().isEmpty()){
			MenuBar sub = new MenuBar(true);
			source.addItem(menu.getTitle(), sub);
			for(ShopMenu m : menu.getSubList()){
				addMenuBar(sub,m);
			}
		}else{
			source.addItem(new MenuItem(menu.getTitle(), new Command() {
				public void execute() {
					Window.alert(menu.getTitle());
				}
			}));
		}
	}
	
	public MainAppPanel() {
		mockData();
		main.setStyleName("mainpanel");
		
		//menus
		initMenu();
		
		//content
		initContentPanel();
		
		//root
		initRoot();
	}
	
	public Widget getUI(){
		
		return main;
	}

	public int getContentHeight() {
		return contentHeight;
	}
	

}