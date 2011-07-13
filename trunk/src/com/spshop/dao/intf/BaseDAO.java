package com.spshop.dao.intf;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;

import com.spshop.model.Component;

public interface BaseDAO<T extends Component, ID extends Serializable> {
	T findById(ID id);

	T findById(ID id, boolean lock);

	T fetchById(ID id);

	T fetchById(ID id, boolean lock);

	List<T> findAll();

	List<T> findPageByPage(int firstResult, int maxResults);

	List<T> findByExample(T exampleInstance, String... excludeProperty);

	T save(T entity);

	void remove(ID id);

	void remove(T entity);

	T merge(T entity);
	
	T persist(T entity);

	void setSessionFactory(SessionFactory s);
	
	void flush();
	
	void evict(T entity);
}
