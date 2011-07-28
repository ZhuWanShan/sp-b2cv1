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
	
	public Category() {
	}
	
	public Category(Category category) {
		super(category);
	}


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
	
	@Override
	public Category clone() {
		return clone(true);
	}

	private Category clone(boolean withParent) {
		Category obj = null;
		obj = new Category(this);
		if (this.displayName != null) {
			/* Does not have a clone() method */
			obj.displayName = this.displayName;
		}
		if (this.icon != null) {
			obj.icon = (Image) this.icon.clone();
		}
		if (this.subCategories != null) {
			/* Does not have a clone() method */
			obj.subCategories = new ArrayList<Category>();
			if(null!=this.subCategories){
				for (Category c : this.subCategories) {
					Category s = c.clone(false);
					s.setParent(obj);
					obj.subCategories.add(s);
				}
			}
		}
		if (withParent&&this.parent != null) {
			obj.parent = this.parent.clone();
		}
		return obj;
	}
	
	

}
