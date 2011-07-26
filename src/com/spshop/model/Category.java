package com.spshop.model;

import java.util.ArrayList;
import java.util.List;

public class Category  extends Component{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4754872499051739634L;
	
	private String displayName;
	private Image icon;
	
	private List<Category> subCategories = new ArrayList<Category>();
	private Category parent;
	

	public List<Category> getSubCategories() {
		return subCategories;
	}

	public void setSubCategories(List<Category> subCategories) {
		this.subCategories = subCategories;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public Image getIcon() {
		return icon;
	}

	public void setIcon(Image icon) {
		this.icon = icon;
	}

	public void setParent(Category parent) {
		this.parent = parent;
	}

	public Category getParent() {
		return parent;
	}

}
