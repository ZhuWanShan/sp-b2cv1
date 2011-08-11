package com.spshop.admin.client.businessui;

import java.util.Set;
import java.util.TreeSet;

import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
import com.spshop.admin.client.businessui.callback.ChangeObservable;
import com.spshop.admin.client.businessui.callback.EditorChangeListener;
public abstract class ObservableComposite<C,W extends Widget> extends Composite implements ChangeObservable<C, W>{
	private Set<EditorChangeListener<C, W>> listeners = new TreeSet<EditorChangeListener<C, W>>();
	protected C componet;
	private W self;
	
	@SuppressWarnings("unchecked")
	public ObservableComposite() {
		self = (W) this;
	}
	
	public C getComponet() {
		return componet;
	}

	public abstract void setComponet(C componet);

	@Override
	public void addChangeListener(
			EditorChangeListener<C, W> listener) {
		this.listeners.add(listener);
	}
	@Override
	public void notifyChange() {
		for (EditorChangeListener<C, W> lsn : listeners) {
			lsn.onChange(componet, self);
		}
	}
	@Override
	public void notifyDelete() {
		for (EditorChangeListener<C, W> lsn : listeners) {
			lsn.onDelete(componet, self);
		}
	}
}
