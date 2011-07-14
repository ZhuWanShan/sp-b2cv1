package com.spshop.model;

public class FeedBack extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = 9041684260070281865L;
	private String content;
	private String strType;
	private User user;
	
	public void setType(FeedBackType type) {
		this.strType = type.getValue();
	}
	
	public FeedBackType getType() {
		if(null==strType){
			return null;
		}
		return FeedBackType.valueOf(strType.toUpperCase());
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getContent() {
		return content;
	}
	public void setStrType(String strType) {
		this.strType = strType;
	}
	public String getStrType() {
		return strType;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return user;
	}

}
