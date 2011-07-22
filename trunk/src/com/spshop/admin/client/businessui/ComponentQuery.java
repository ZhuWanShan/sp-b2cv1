package com.spshop.admin.client.businessui;


import com.google.gwt.core.client.GWT;
import com.google.gwt.i18n.client.DateTimeFormat;
import com.google.gwt.resources.client.CssResource;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.rpc.AsyncCallback;
import com.google.gwt.user.client.ui.FlexTable;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.HasHorizontalAlignment;
import com.google.gwt.user.client.ui.ResizeComposite;
import com.google.gwt.user.client.ui.RootPanel;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.PopWindow;
import com.spshop.model.Component;
import com.spshop.model.Image;
import com.spshop.model.QueryCriteria;
import com.spshop.model.QueryResult;

public class ComponentQuery extends ResizeComposite {

	public interface Listener {
		void onItemSelected(Component item);
	}

	interface Binder extends UiBinder<Widget, ComponentQuery> {
	}

	interface SelectionStyle extends CssResource {
		String selectedRow();
	}

	private static final Binder binder = GWT.create(Binder.class);
	static final int VISIBLE_EMAIL_COUNT = 20;

	private QueryServiceAsync queryServiceAsync = GWT
			.create(QueryService.class);

	@UiField
	FlexTable header;
	@UiField
	FlexTable table;
	@UiField
	SelectionStyle selectionStyle;

	@UiField
	QueryCondition queryCondition;

	private QueryCriteria queryCriteria;
	
	private QueryResult<Component> result;

	private Listener listener;
	private int startIndex, selectedRow = -1;
	private NavBar navBar;

	public ComponentQuery(String title, Class type) {
		initWidget(binder.createAndBindUi(this));
		navBar = new NavBar(this);
		queryCondition.setCaption(title);
		queryCondition.setComponentQuery(this);
		queryCondition.setType(type);
		initTable();
	}

	/**
	 * Sets the listener that will be notified when an item is selected.
	 */
	// public void setListener(Listener listener) {
	// this.listener = listener;
	// }
	//
	// @Override
	// protected void onLoad() {
	// // Select the first row if none is selected.
	// if (selectedRow == -1) {
	// selectRow(0);
	// }
	// }
	//
	// void newer() {
	// // Move back a page.
	// startIndex -= VISIBLE_EMAIL_COUNT;
	// if (startIndex < 0) {
	// startIndex = 0;
	// } else {
	// styleRow(selectedRow, false);
	// selectedRow = -1;
	// update();
	// }
	// }
	//
	// void older() {
	// // Move forward a page.
	// // startIndex += VISIBLE_EMAIL_COUNT;
	// // if (startIndex >= MailItems.getMailItemCount()) {
	// // startIndex -= VISIBLE_EMAIL_COUNT;
	// // } else {
	// // styleRow(selectedRow, false);
	// // selectedRow = -1;
	// // update();
	// // }
	// }
	//
	// @UiHandler("table")
	// void onTableClicked(ClickEvent event) {
	// // Select the row that was clicked (-1 to account for header row).
	// Cell cell = table.getCellForEvent(event);
	// if (cell != null) {
	// int row = cell.getRowIndex();
	// selectRow(row);
	// }
	// }
	//
	private void initTable() {
		// Initialize the header.
		if (queryCondition.getType() == Image.class) {
			initImageHeader();
		}

		// Initialize the table.
		
	}

	private void initImageHeader() {
		header.getColumnFormatter().setWidth(0, "100px");
		header.getColumnFormatter().setWidth(1, "150px");
		header.getColumnFormatter().setWidth(2, "150px");
		header.getColumnFormatter().setWidth(3, "150px");
		header.getColumnFormatter().setWidth(4, "200px");
		//header.getColumnFormatter().setWidth(5, "200px");

		header.setText(0, 0, "Thumbnail");
		header.setText(0, 1, "Name");
		header.setText(0, 2, "Size Type");
		header.setText(0, 3, "Create Date");
//		header.setWidget(0, 4, new InlineLabel("Operation"));
		header.setWidget(0, 4, navBar);
		header.getCellFormatter().setHorizontalAlignment(0, 4,
				HasHorizontalAlignment.ALIGN_RIGHT);
		table.getColumnFormatter().setWidth(0, "100px");
		table.getColumnFormatter().setWidth(1, "150px");
		table.getColumnFormatter().setWidth(2, "150px");
		table.getColumnFormatter().setWidth(3, "150px");
		table.getColumnFormatter().setWidth(4, "200px");
		table.getCellFormatter().setHorizontalAlignment(0, 1,
				HasHorizontalAlignment.ALIGN_LEFT);
		table.getCellFormatter().setHorizontalAlignment(0, 2,
				HasHorizontalAlignment.ALIGN_LEFT);
		table.getCellFormatter().setHorizontalAlignment(0, 3,
				HasHorizontalAlignment.ALIGN_LEFT);
		table.getCellFormatter().setHorizontalAlignment(0, 4,
				HasHorizontalAlignment.ALIGN_LEFT);
	}

	//
	// /**
	// * Selects the given row (relative to the current page).
	// *
	// * @param row the row to be selected
	// */
	// private void selectRow(int row) {
	// // When a row (other than the first one, which is used as a header) is
	// // selected, display its associated MailItem.
	// // MailItem item = MailItems.getMailItem(startIndex + row);
	// // if (item == null) {
	// // return;
	// // }
	// //
	// // styleRow(selectedRow, false);
	// // styleRow(row, true);
	// //
	// // item.read = true;
	// // selectedRow = row;
	// //
	// // if (listener != null) {
	// // listener.onItemSelected(item);
	// // }
	// }
	//
	// private void styleRow(int row, boolean selected) {
	// if (row != -1) {
	// String style = selectionStyle.selectedRow();
	//
	// if (selected) {
	// table.getRowFormatter().addStyleName(row, style);
	// } else {
	// table.getRowFormatter().removeStyleName(row, style);
	// }
	// }
	// }
	//
	private void update() {
		int count = result.getRecordCount();
		int max = startIndex + VISIBLE_EMAIL_COUNT;
		if (max > count) {
			max = count;
		}
		
		// Update the nav bar.
		navBar.update(startIndex, count, max);

		// Show the selected emails.
		int i = 0;
		for (; i < VISIBLE_EMAIL_COUNT; ++i) {
			// Don't read past the end.
			if (startIndex + i >= result.getRecordCount()) {
				break;
			}

			 if(result.getComponentType().equals(Image.class.getName()) ){
				 updateImage();
			 }
		}

		for (; i < VISIBLE_EMAIL_COUNT; ++i) {
			table.removeRow(table.getRowCount() - 1);
		}
	}

	private void updateImage() {
		DateTimeFormat dateTimeFormat = DateTimeFormat.getFormat("yyyy/MM/dd");
		for(int i = 0; i< result.currentPageData().size();i++){
			Image image = (Image) result.currentPageData().get(i);
			table.setText(i, 0, "Test");
			table.setText(i, 1, image.getName());
			table.setText(i, 2, image.getStrSizeType());
			table.setText(i, 3, dateTimeFormat.format(image.getCreateDate()));
			table.setText(i, 4, "Test");
		}
	}

	public void setQueryCriteria(QueryCriteria queryCriteria) {
		this.queryCriteria = queryCriteria;
	}

	public QueryCriteria getQueryCriteria() {
		return queryCriteria;
	}

	public void search() {
		final PopWindow popWindow = new PopWindow("Search",new HTML("Loading...") ,true,false);
		popWindow.center();
		queryServiceAsync.greetServer(queryCriteria,
				new AsyncCallback<QueryResult<Component>>() {

					@Override
					public void onSuccess(QueryResult<Component> result) {
						setResult(result);
						update();
						popWindow.hide();
						RootPanel.get().remove(popWindow);
					}

					@Override
					public void onFailure(Throwable e) {
						Window.alert(e.getMessage());
					}
				});
	}

	public QueryResult<Component> getResult() {
		return result;
	}

	public void setResult(QueryResult<Component> result) {
		this.result = result;
	}
	

}
