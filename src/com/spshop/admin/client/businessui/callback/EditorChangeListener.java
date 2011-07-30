package com.spshop.admin.client.businessui.callback;

import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.Component;

public interface EditorChangeListener<C extends Component,W extends Widget> {
	void onChange(C component, W widget);
	void onDelete(C component, W widget);
}
