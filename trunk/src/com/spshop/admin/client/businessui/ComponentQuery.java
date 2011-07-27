package com.spshop.admin.client.businessui;

import java.util.ArrayList;
import java.util.List;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.i18n.client.DateTimeFormat;
import com.google.gwt.resources.client.CssResource;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.FlexTable;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.HTMLTable.Cell;
import com.google.gwt.user.client.ui.HasHorizontalAlignment;
import com.google.gwt.user.client.ui.ResizeComposite;
import com.google.gwt.user.client.ui.RootPanel;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.AdminWorkspace;
import com.spshop.admin.client.AsyncCallbackAdapter;
import com.spshop.admin.client.PopWindow;
import com.spshop.model.Component;
import com.spshop.model.Image;
import com.spshop.model.QueryCriteria;
import com.spshop.model.QueryResult;
@SuppressWarnings("rawtypes")
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
	static final int VISIBLE_RECORD_COUNT = 20;

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
	private int startIndex;
	private List<Integer> selectedRows = new ArrayList<Integer>();
	private NavBar navBar;

	public ComponentQuery(String title, Class type) {
		initWidget(binder.createAndBindUi(this));
		table.setCellPadding(0);
		table.setCellSpacing(0);
		header.setCellPadding(0);
		header.setCellSpacing(0);
		navBar = new NavBar(this);
		queryCondition.setCaption(title);
		queryCondition.setComponentQuery(this);
		queryCondition.setType(type);
		initTable();
		setListener(new Listener() {

			@Override
			public void onItemSelected(Component item) {
				// Window.alert("select:" + item);
			}
		});
	}

	/**
	 * Sets the listener that will be notified when an item is selected.
	 */
	public void setListener(Listener listener) {
		this.listener = listener;
	}

	void newer() {
		// Move back a page.
		startIndex -= 1;
		search();
		update();
	}

	void older() {
		startIndex += 1;
		search();
		update();
	}

	@UiHandler("table")
	void onTableClicked(ClickEvent event) {
		// Select the row that was clicked (-1 to account for header row).
		Cell cell = table.getCellForEvent(event);
		if (cell != null) {
			int col = cell.getCellIndex();
			if (col < 2) {
				int row = cell.getRowIndex();
				selectRow(row);
			}
		}
	}

	private void initTable() {
		// Initialize the header.
		if (queryCondition.getType() == Image.class) {
			initImageHeader();
		}

		// Initialize the table.

	}

	private void initImageHeader() {
		header.getColumnFormatter().setWidth(0, "80px");
		header.getColumnFormatter().setWidth(1, "150px");
		header.getColumnFormatter().setWidth(2, "120px");
		header.getColumnFormatter().setWidth(3, "100px");
		header.getColumnFormatter().setWidth(4, "250px");
		// header.getColumnFormatter().setWidth(5, "200px");

		header.setText(0, 0, "Thumbnail");
		header.setText(0, 1, "Name");
		header.setText(0, 2, "Size Type");
		header.setText(0, 3, "Create Date");
		// header.setWidget(0, 4, new InlineLabel("Operation"));
		header.setWidget(0, 4, navBar);
		header.getCellFormatter().setHorizontalAlignment(0, 4,
				HasHorizontalAlignment.ALIGN_RIGHT);
		table.getColumnFormatter().setWidth(0, "80px");
		table.getColumnFormatter().setWidth(1, "150px");
		table.getColumnFormatter().setWidth(2, "120px");
		table.getColumnFormatter().setWidth(3, "100px");
		table.getColumnFormatter().setWidth(4, "250px");
	}

	/**
	 * Selects the given row (relative to the current page).
	 * 
	 * @param row
	 *            the row to be selected
	 */
	private void selectRow(int row) {

		if (row > result.getResult().size() - 1) {
			return;
		}

		Component component = result.getResult().get(row);
		if (component == null) {
			return;
		}

		if (selectedRows.contains(row)) {
			styleRow(row, false);
			selectedRows.remove(new Integer(row));
		} else {
			styleRow(row, true);
			selectedRows.add(row);
		}

		if (listener != null) {
			listener.onItemSelected(component);
		}
	}

	private void styleRow(int row, boolean selected) {
		if (row != -1) {
			String style = selectionStyle.selectedRow();

			if (selected) {
				table.getRowFormatter().addStyleName(row, style);
			} else {
				table.getRowFormatter().removeStyleName(row, style);
			}
		}
	}

	private void update() {
		int rowCount = table.getRowCount();
		for(int i=0 ; i<rowCount; i++ ){
			table.removeRow(0);
		}
		selectedRows = new ArrayList<Integer>();
		int count = result.getRecordCount();
		int max = result.getResult().size();

		// Update the nav bar.
		navBar.update(startIndex, count, max);

		if (max > 0) {
			if (result.getComponentType().equals(Image.class.getName())) {
				updateImage();
			}
		}

	}

	private void updateImage() {
		DateTimeFormat dateTimeFormat = DateTimeFormat.getFormat("yy/MM/dd");
		for (int i = 0; i < result.getResult().size(); i++) {
			Image image = (Image) result.getResult().get(i);
			table.setWidget(i, 0, new com.google.gwt.user.client.ui.Image(
					image.getIconUrl()));
			table.setText(i, 1, image.getName());
			table.setText(i, 2, image.getSizeType().getTitle());
			table.setText(i, 3, dateTimeFormat.format(image.getCreateDate()));
			Operation<Image> operation = new Operation<Image>(image);
			operation.setListener(new OperationListenerAdapter<Image>(){
				@Override
				public void onDelete(Image content) {
					super.onDelete(content);
				}
				@Override
				public void onEdit(Image content) {
					ImageCreation imageCreation = new ImageCreation(content);
					imageCreation.setSize("800px", "400px");
					imageCreation.setTitle("Edit Image");
					PopWindow pop = new PopWindow("Edit Image",imageCreation, true, true);
					//pop.setSize("400px", "400px");
					pop.center();
				}
			});
			table.setWidget(i, 4, operation);
			table.getCellFormatter().setHorizontalAlignment(i, 4,
					HasHorizontalAlignment.ALIGN_RIGHT);
		}
	}

	public void setQueryCriteria(QueryCriteria queryCriteria) {
		this.queryCriteria = queryCriteria;
	}

	public QueryCriteria getQueryCriteria() {
		return queryCriteria;
	}

	public void search() {
		final PopWindow popWindow = new PopWindow("Search", new HTML(
				"Loading..."), true, false);
		popWindow.center();
		queryCriteria.setStartIndex(startIndex * VISIBLE_RECORD_COUNT);
		queryCriteria.setMaxResuilt(VISIBLE_RECORD_COUNT);
		AdminWorkspace.ADMIN_SERVICE_ASYNC.query(queryCriteria,
				new AsyncCallbackAdapter<QueryResult<Component>>() {
					public void onSuccess(QueryResult<Component> result) {
						setResult(result);
						update();
						popWindow.hide();
						RootPanel.get().remove(popWindow);
					}
				});
	}

	public QueryResult<Component> getResult() {
		return result;
	}

	public void setResult(QueryResult<Component> result) {
		this.result = result;
	}

	public QueryCondition getQueryCondition() {
		return queryCondition;
	}

}
