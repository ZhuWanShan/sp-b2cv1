package com.spshop.admin.client.businessui.callback;

import com.google.gwt.user.client.ui.Widget;
import com.spshop.model.Component;

public interface ChangeObservable <C extends Component,W extends Widget>{
	void addChangeListener(EditorChangeListener<C,W> listener);
	void notifyChange();
	void notifyDelete();
}
