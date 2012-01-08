package com.spshop.dao.impl;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

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

	@Override
	public Map<String, String> search(String keyword, int start, int end) {
 		String hql = "select title, name from Product where keywords like ? order by name asc";
		
		
		 Map<String, String> re = new TreeMap<String, String>();
		
		List rs = getSession().createQuery(hql).setParameter(0, "%"+keyword+"%").setMaxResults(20).list();
		
		if(null!=rs){
			for (Object object : rs) {
				Object[] el = (Object[]) object;
				re.put(el[0].toString(), el[1].toString());
			}
		}
		
		return re;
	}
}
