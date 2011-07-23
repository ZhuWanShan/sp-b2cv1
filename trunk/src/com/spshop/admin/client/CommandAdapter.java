package com.spshop.admin.client;

import com.google.gwt.user.client.Window;

public class CommandAdapter implements Command{

	@Override
	public void execute() {
		Window.alert("Not implemented yet!!");
	}

	@Override
	public boolean isEmpty() {
		return false;
	}

}
