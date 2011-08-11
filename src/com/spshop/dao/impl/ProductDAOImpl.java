package com.spshop.dao.impl;

import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.spshop.dao.AbstractBaseDAO;
import com.spshop.dao.intf.ProductDAO;
import com.spshop.model.Product;

public class ProductDAOImpl extends AbstractBaseDAO<Product, Long>  implements ProductDAO{
}
