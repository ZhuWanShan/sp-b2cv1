/*
 * Copyright 2007 Google Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package com.spshop.admin.client;

import com.google.gwt.core.client.GWT;
import com.google.gwt.dom.client.Element;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.FlowPanel;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.ResizeComposite;
import com.google.gwt.user.client.ui.ScrollPanel;
import com.google.gwt.user.client.ui.Widget;

/**
 * A composite for displaying the details of an email message.
 */
public class ContentPanel extends ResizeComposite {

  interface Binder extends UiBinder<Widget, ContentPanel> { }
  private static final Binder binder = GWT.create(Binder.class);

  @UiField Element subject;
  @UiField ScrollPanel body;

  public ContentPanel() {
    initWidget(binder.createAndBindUi(this));
    subject.setInnerText("Broadcast");
    
    body.add(new HTML("This application is belong to Spark and his team, Thanks for all team memebers' hard work!!!"));
  }

  
  public void setTitle(String title){
	  subject.setInnerText(title);
  }
}
