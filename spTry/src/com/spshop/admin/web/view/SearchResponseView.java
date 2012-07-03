package com.spshop.admin.web.view;


public class SearchResponseView<T extends Object> {
	private boolean success = false;
	private T results;
	private int totalCount = 0;
	
	public SearchResponseView() {
	}
	
	
	public SearchResponseView(boolean success, T results, int totalCount) {
		this.success = success;
		this.results = results;
		this.totalCount = totalCount;
	}

	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}


	public T getResults() {
		return results;
	}


	public void setResults(T results) {
		this.results = results;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
}
