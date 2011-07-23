package com.spshop.model;

import java.util.List;

public class Comment extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4838385664945447761L;
	
	private List<Comment> replyList;
	private String content;
	private int rate;
	private User user;
	private Product product;
	
	public List<Comment> getReplyList() {
		return replyList;
	}
	public void setReplyList(List<Comment> replyList) {
		this.replyList = replyList;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
}
