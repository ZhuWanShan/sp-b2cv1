package com.spshop.admin.client.rich;

import com.google.gwt.core.client.GWT;
import com.google.gwt.resources.client.CssResource;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.RichTextArea;
import com.google.gwt.user.client.ui.VerticalPanel;
import com.google.gwt.user.client.ui.Widget;

public class RichText extends Composite {

	private static RichTextUiBinder uiBinder = GWT
			.create(RichTextUiBinder.class);
	@UiField VerticalPanel content;
	@UiField
	RichAreaStyle richArea;
	
	private RichTextArea textArea;
	private RichTextToolbar2 toolbar;
	
	public interface RichAreaStyle extends CssResource{
		String richStyle();
		String richStyleHeader();
	}

	interface RichTextUiBinder extends UiBinder<Widget, RichText> {
	}

	public RichText() {
		initWidget(uiBinder.createAndBindUi(this));
		textArea = new RichTextArea();
		toolbar  = new RichTextToolbar2(textArea);
		textArea.addStyleName(richArea.richStyle());
		textArea.setWidth("100%");
		toolbar.addStyleName(richArea.richStyleHeader());
		content.add(toolbar);
		content.add(textArea);
	}
	
	public void setHTML(String html){
		textArea.setHTML(html);
	}
	public String getHTML(){
		return textArea.getHTML();
	}

}
