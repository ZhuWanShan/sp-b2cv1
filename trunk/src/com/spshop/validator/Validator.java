package com.spshop.validator;

import java.util.Collection;
import java.util.Map;

import com.spshop.exception.ServiceValidateException;

public abstract class Validator<T> {
	private StringBuffer buff = new StringBuffer();
	private T component;
	public Validator(T component) {
		this.setComponent(component);
	}
	public void validate(){
		runRules();
		if(buff.length()>0){
			throw new ServiceValidateException(buff.toString());
		}
	}
	
	public abstract void runRules();
	
	public void addMessage(String msg){
		buff.append(msg+"\n");
	}
	public void setComponent(T component) {
		this.component = component;
	}
	public T getComponent() {
		return component;
	}
	
	@SuppressWarnings("rawtypes")
	public boolean isEmpty(Object obj){
		if(null==obj){
			return true;
		}
		
		if(obj instanceof CharSequence){
			return obj.toString().matches("\\s*");
		}
		
		if(obj instanceof Collection){
			return ((Collection)obj).isEmpty();
		}
		
		if(obj instanceof Map){
			return ((Map)obj).isEmpty();
		}
		
		return false;
	}
	
	public boolean isNumber(String str){
		if(!isEmpty(str)){
			return str.matches("\\d+(\\.\\d+)*");
		}
		return false;
	}

}
