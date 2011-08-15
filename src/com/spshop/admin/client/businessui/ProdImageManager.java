package com.spshop.admin.client.businessui;

import java.util.List;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.resources.client.CssResource;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.FlowPanel;
import com.google.gwt.user.client.ui.SimplePanel;
import com.google.gwt.user.client.ui.VerticalPanel;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.CommandFactory;
import com.spshop.admin.client.businessui.callback.SelectedCallBack;
import com.spshop.model.Component;
import com.spshop.model.Image;

public class ProdImageManager extends ObservableComposite<List<com.spshop.model.Image>, ProdImageManager> {

	private static ProdImageManagerUiBinder uiBinder = GWT
			.create(ProdImageManagerUiBinder.class);
	@UiField FlowPanel host;
	@UiField Button addImg;
	
	@UiField ProdImageItemCss style;
	interface ProdImageManagerUiBinder extends
			UiBinder<Widget, ProdImageManager> {
	}
	
	interface ProdImageItemCss extends CssResource{
		String imageItem();
	}

	public ProdImageManager() {
		initWidget(uiBinder.createAndBindUi(this));
	}

	@UiHandler("addImg")
	void onAddImgClick(ClickEvent event) {
		CommandFactory.popUpImageQuery(true, new SelectedCallBack() {
			
			@Override
			public void callBack(List<Component> selectedItems) {
				//Window.alert(selectedItems.toString());
				//addImage((Image)selectedItems.get(0));
				for (Component component : selectedItems) {
					addImage((Image)component);
				}
			}
		}).execute();
	}

	@Override
	public void setComponet(List<com.spshop.model.Image> componet) {
		this.componet = componet;
		for (Image image : componet) {
			 addImage(image);
		}
	}
	
	public void addImage(final Image image){
		final ProdImageManager self = this;
		this.componet.add(image);
		final SimplePanel  fp = new SimplePanel();
		fp.setStyleName(style.imageItem());
		final VerticalPanel vp = new VerticalPanel();
		vp.add(new com.google.gwt.user.client.ui.Image(image.getSmallUrl()));
		Button btn = new Button("Remove");
		vp.add(btn);
		fp.add(vp);
		host.add(fp);
		btn.addClickHandler(new ClickHandler() {
			@Override
			public void onClick(ClickEvent event) {
				self.host.remove(fp);
				self.getComponet().remove(image);
			}
		});
	}

}
