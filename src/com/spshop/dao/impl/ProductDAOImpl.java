package com.spshop.dao.impl;

import java.util.List;

import com.spshop.dao.AbstractBaseDAO;
import com.spshop.dao.intf.ProductDAO;
import com.spshop.model.Category;
import com.spshop.model.Product;

public class ProductDAOImpl extends AbstractBaseDAO<Product, Long>  implements ProductDAO{

	@SuppressWarnings("unchecked")
	@Override
	public List<String> queryProdNameByCategory(Category category, int start,
			int end) {
		return getSession().createQuery("select p.name from Product as p join p.categories as ps where ps.id = ? order by p.id desc")
		.setParameter(0, category.getId()).setFirstResult(start).setMaxResults(end-start).list();
	}

	@Override
	public Product getProductByName(String name) {
		return (Product) getSession().createQuery("From Product where name = ? ").setParameter(0, name).uniqueResult();
	}
}
