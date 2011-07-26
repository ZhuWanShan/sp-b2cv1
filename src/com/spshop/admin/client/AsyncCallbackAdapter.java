package com.spshop.admin.client;

import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.rpc.AsyncCallback;

public class 
AsyncCallbackAdapter<T> implements AsyncCallback<T>{
	@Override
	public void onFailure(Throwable throwable) {
		Window.alert(throwable.getMessage());
	}

	@Override
	public void onSuccess(T rs) {
		
	}

}
