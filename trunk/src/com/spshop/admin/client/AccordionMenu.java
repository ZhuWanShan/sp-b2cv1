package com.spshop.admin.client;

import java.util.ArrayList;
import java.util.List;

import com.google.gwt.event.logical.shared.SelectionEvent;
import com.google.gwt.event.logical.shared.SelectionHandler;
import com.google.gwt.uibinder.client.UiConstructor;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.RootPanel;
import com.google.gwt.user.client.ui.Tree;
import com.google.gwt.user.client.ui.TreeItem;

public class AccordionMenu extends Composite {

	private Tree tree;

	@UiConstructor
	public AccordionMenu(String type) {
		tree = createTree(type);
		initWidget(tree);
	}

	private Tree createTree(String type) {
		Tree tree = new Tree();
		AccordionMenuType accordionMenuType = AccordionMenuType.valueOf(type);
		List<AccordianItem> rootItems = getItems(accordionMenuType);
		for (AccordianItem accordianItem : rootItems) {
			tree.addItem(accordianItem);
		}
		SelectionHandler<TreeItem> selectionHandler = getSeletionHandler(accordionMenuType);
		tree.addSelectionHandler(selectionHandler);
		return tree;
	}
	

	private SelectionHandler<TreeItem> getSeletionHandler(
			AccordionMenuType accordionMenuType) {
		SelectionHandler<TreeItem> selectionHandler = new SelectionHandler<TreeItem>() {
			
			@Override
			public void onSelection(SelectionEvent<TreeItem> item) {
				AccordianItem  accordianItem = (AccordianItem)item.getSelectedItem();
				PopWindow popWindow = new PopWindow(accordianItem.getTitle() , new HTML("Loading...") ,true,true);
				popWindow.center();
				accordianItem.getComand().execute();
				popWindow.hide();
				RootPanel.get().remove(popWindow);
			}
		};
		return selectionHandler;
	}

	private List<AccordianItem> getItems(AccordionMenuType accordionMenuType) {
		List<AccordianItem> items = new ArrayList<AccordianItem>();
		switch (accordionMenuType) {
		case IMAGE_MANAGEMENT:
			AccordianItem root = new AccordianItem("Image Management", CommandFactory.emptyCommand());
			root.addItem(new AccordianItem("Create Iamge", CommandFactory.createImage()));
			items.add(root);
			root.setState(true);
			break;
		case PRODUCT_MANAGEMENT:
			AccordianItem root2 = new AccordianItem("Product Management", CommandFactory.emptyCommand());
			root2.addItem(new AccordianItem("Create Product", CommandFactory.createProduct()));
			items.add(root2);
			root2.setState(true);
			break;

		default:
			break;
		}
		return items;
	}
}
