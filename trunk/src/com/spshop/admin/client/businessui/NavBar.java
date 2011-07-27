package com.spshop.admin.client.businessui;

import com.google.gwt.core.client.GWT;
import com.google.gwt.dom.client.Element;
import com.google.gwt.dom.client.Style.Visibility;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.uibinder.client.UiTemplate;
import com.google.gwt.user.client.ui.Anchor;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;

/**
 * A simple widget representing prev/next page navigation.
 */
class NavBar extends Composite {
  @UiTemplate("NavBar.ui.xml")
  interface Binder extends UiBinder<Widget, NavBar> { }
  private static final Binder binder = GWT.create(Binder.class);

  @UiField Element countLabel;
  @UiField Anchor newerButton;
  @UiField Anchor olderButton;
  
  private ComponentQuery componentQuery;

  public NavBar(ComponentQuery componentQuery) {
    initWidget(binder.createAndBindUi(this));
    this.setComponentQuery(componentQuery);
    if(null==componentQuery.getResult()||componentQuery.getResult().getResult().isEmpty()){
    	setVisibility(newerButton, false);
    	setVisibility(olderButton, false);
    }
  }

  public void update(int startIndex, int count, int max) {
    setVisibility(newerButton, startIndex != 0);
    setVisibility(olderButton, count > (max*(startIndex+1)));
    countLabel.setInnerHTML(""+(startIndex*max+1)+" to "+(startIndex*max+max)+" of "+ count);
  }

  @UiHandler("newerButton")
  void onNewerClicked(ClickEvent event) {
	   componentQuery.newer();
  }

  @UiHandler("olderButton")
  void onOlderClicked(ClickEvent event) {
	  componentQuery.older();
  }

  private void setVisibility(Widget widget, boolean visible) {
    widget.getElement().getStyle().setVisibility(
        visible ? Visibility.VISIBLE : Visibility.HIDDEN);
  }

public void setComponentQuery(ComponentQuery componentQuery) {
	this.componentQuery = componentQuery;
}

public ComponentQuery getComponentQuery() {
	return componentQuery;
}
}
