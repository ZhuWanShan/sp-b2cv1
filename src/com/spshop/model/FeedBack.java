package com.spshop.model;

public class FeedBack extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 9041684260070281865L;
	private String content;
	private FeedBackType type;
	public void setType(FeedBackType type) {
		this.type = type;
	}
	public FeedBackType getType() {
		return type;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContent() {
		return content;
	}

}
