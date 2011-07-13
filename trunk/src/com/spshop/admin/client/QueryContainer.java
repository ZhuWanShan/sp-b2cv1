package com.spshop.admin.client;


import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.event.logical.shared.ResizeEvent;
import com.google.gwt.event.logical.shared.ResizeHandler;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.rpc.AsyncCallback;
import com.google.gwt.user.client.ui.FlexTable;
import com.google.gwt.user.client.ui.FlowPanel;
import com.google.gwt.user.client.ui.HorizontalPanel;
import com.google.gwt.user.client.ui.Hyperlink;
import com.google.gwt.user.client.ui.VerticalPanel;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.QueryCriteria;
import com.spshop.model.Component;

public class QueryContainer {
	
	private VerticalPanel main = new VerticalPanel();
	private final VerticalPanel result = new VerticalPanel();
	private final HorizontalPanel pagination = new HorizontalPanel();
	private final FlowPanel links = new FlowPanel();
	private QueryCriteria criteria;
	
	private FlexTable queryTable = new FlexTable(); 
	
	private String[] headers = new String[] { "Title", "Status", "createDate",
	"LastUpdateDate" };
	
	private QueryServiceAsync queryService= GWT.create(QueryService.class);

	private int currentPage = 1;
	
	public QueryContainer() {
		
	}
	
	private void init() {
		main.setWidth("100%");
		main.setStyleName("queryResultPanel");
		result.setWidth("100%");
		result.setStyleName("result");
		pagination.setWidth("100%");
		pagination.setStyleName("pagination");
		main.setHeight(Window.getClientHeight()*0.88-33+"px");
		result.setHeight((Window.getClientHeight()*0.88-33-25)+"px");
		
		queryTable.setWidth("100%");
		queryTable.setText(0, 0, headers[0]);
		queryTable.setText(0, 1,  headers[1]);
		queryTable.setText(0, 2,  headers[2]);
		queryTable.setText(0, 3,  headers[3]);
		queryTable.getRowFormatter().addStyleName(0, "queryHeader");
		result.add(queryTable);
		
		links.setStyleName("queryPagination");
		pagination.add(links);
		
		main.add(result);
		main.add(pagination);
		
		Window.addResizeHandler(new ResizeHandler() {
			public void onResize(ResizeEvent event) {
				main.setHeight(Window.getClientHeight()*0.88-33+"px");
				result.setHeight((Window.getClientHeight()*0.88-33-25)+"px");
			}
		});
		
	}
	
	public void refreshPagination(int pageCount, int current){
		links.clear();
		if(pageCount>1){
			Hyperlink first = createLink("<<", "#", 1);;
			links.add(first);
			if(current>1){
				Hyperlink previous =createLink("Previous", "#", current-1);
				links.add(previous);
			}
			if(current < 3){
				if(pageCount>=5){
					for(int i =1  ;  i<= 5 ; i++){
						Hyperlink link =createLink(""+i,"#",i);
						links.add(link);
						if(current==i){
							link.setStyleName("currentPageLink");
						}
					}
				}else{
					for(int i =1  ;  i<= pageCount ; i++){
						Hyperlink link =createLink(""+i,"#",i);
						links.add(link);
						if(current==i){
							link.setStyleName("currentPageLink");
						}
					}
				}
			}else{
				int pre =2;
				int ne = 2;
				ne = ne > (pageCount-current) ?  pageCount-current :  2;
				pre = 5-ne-1;
				for(int i =current-pre  ;  i<=current+ne  ; i++){
					Hyperlink link =createLink(""+i,"#",i);
					links.add(link);
					if(current==i){
						link.setStyleName("currentPageLink");
					}
				}
			}
			
			
			if(current < pageCount){
				Hyperlink next =createLink("Next", "#", current+1);
				links.add(next);
			}
		
			Hyperlink last = createLink(">> Total: "+pageCount, "#", pageCount);
			links.add(last);
		}
	}
	
	@SuppressWarnings("deprecation")
	private Hyperlink createLink(String txt,String href,final int page){
		Hyperlink link = new  Hyperlink(txt,href);
		final QueryContainer container = this;
		if(criteria!=null){
				criteria.setStartIndex((page-1)*24);
					link.addClickHandler(new ClickHandler() {
						public void onClick(ClickEvent event) {
							queryService.greetServer(criteria,new AsyncCallback<QueryResult<Component>>() {
								public void onSuccess(QueryResult<Component> result) {
									container.setCriteria(criteria);
									container.refreshPage(result, page);
									container.currentPage  = page;
								}
								public void onFailure(Throwable caught) {
									Window.alert("Falure");
								}
						});
					}
				});
		}
		return link;
	}
	
	public Widget getUI(){
		 init() ;
		return main;
	}

		public void refreshPage(QueryResult<Component> dataSource, int page){
			if(page < 1){
				return;
			}
			currentPage = page;
			refreshContent(dataSource);
		}
		
		
		public void refreshContent(QueryResult<Component> dataSource){
			
			int rows = queryTable.getRowCount();
			
			for(int i=1 ; i< rows-1;i++){
				queryTable.removeRow(1);
			}
			
			int i= 1;
			for(Component component : dataSource.currentPageData()){
				queryTable.setText(i, 0, component.getName());
				queryTable.setText(i, 1,  "asdas");
				queryTable.setText(i, 2,  component.getCreateDate().toString());
				queryTable.setText(i, 3,   component.getUpdateDate().toString());
				i++;
				if(i%2==0){
					queryTable.getRowFormatter().addStyleName(i, "queryEven");
				}else{
					queryTable.getRowFormatter().addStyleName(i, "queryOdd");
				}
			}
			
			refreshPagination(dataSource.getPageCount(), currentPage);
		}

		public int getCurrentPage() {
			return currentPage;
		}

		public QueryCriteria getCriteria() {
			return criteria;
		}

		public void setCriteria(QueryCriteria criteria) {
			this.criteria = criteria;
		}

}
