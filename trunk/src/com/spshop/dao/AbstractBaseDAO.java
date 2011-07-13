package com.spshop.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Criteria;
import org.hibernate.FlushMode;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Example;
import org.springframework.dao.DataAccessResourceFailureException;

import com.spshop.model.Component;

public abstract class AbstractBaseDAO<T extends Component, ID extends Serializable> {

	protected final Log log = LogFactory.getLog(getClass());

	// TODO need to make this configurable
	protected final static FlushMode queryFlushMode = FlushMode.COMMIT;

	// protected StopWatch s = new StopWatch();

	private SessionFactory sessionFactory;
	private Class<T> persistentClass;

	// private Session session;

	@SuppressWarnings("unchecked")
	public AbstractBaseDAO() {
		Type type = ((ParameterizedType) getClass().getGenericSuperclass())
				.getActualTypeArguments()[0];
		this.persistentClass = (Class<T>) type;
	}

	//
	// @SuppressWarnings("unchecked")
	// public void setSession(Session s) {
	// this.session = s;
	// // return (DaoImpl) this;
	// }
	//
	// protected Session getSession() {
	// if (session == null)
	// throw new IllegalStateException("Session has not been set on DAO before
	// usage");
	// return session;
	// }

	public Class<T> getPersistentClass() {
		return persistentClass;
	}

	public T findById(ID id) {
		return findById(id, false);
	}

	@SuppressWarnings("unchecked")
	public T findById(ID id, boolean lock) {
		T entity;
		if (lock)
			entity = (T) sessionFactory.getCurrentSession().load(
					getPersistentClass(), id, LockMode.UPGRADE);
		else
			entity = (T) sessionFactory.getCurrentSession().load(
					getPersistentClass(), id);

		return entity;
	}

	public T fetchById(ID id) {
		return fetchById(id, false);
	}

	@SuppressWarnings("unchecked")
	public T fetchById(ID id, boolean lock) {
		T entity;
		if (lock)
			entity = (T) sessionFactory.getCurrentSession().get(
					getPersistentClass(), id, LockMode.UPGRADE);
		else
			entity = (T) sessionFactory.getCurrentSession().get(
					getPersistentClass(), id);

		return entity;
	}

	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		Criteria crit = getSession().createCriteria(getPersistentClass());
		return crit.list();
	}

	public List<T> findPageByPage(int firstResult, int maxResults) {
		return findByCriteriaPageByPage(firstResult, maxResults);
	}

	@SuppressWarnings("unchecked")
	public List<T> findByExample(T exampleInstance, String... excludeProperty) {
		Criteria crit = getSession().createCriteria(getPersistentClass());
		Example example = Example.create(exampleInstance);
		for (String exclude : excludeProperty) {
			example.excludeProperty(exclude);
		}
		crit.add(example);
		return crit.list();
	}

	public T save(T entity) {
		sessionFactory.getCurrentSession().saveOrUpdate(entity);
		return entity;
	}

	public void remove(ID id) {
		T entity = findById(id, false);

		remove(entity);
	}

	public void remove(T entity) {
		sessionFactory.getCurrentSession().delete(entity);
	}

	@SuppressWarnings("unchecked")
	public T merge(T entity) {
		return (T) sessionFactory.getCurrentSession().merge(entity);
	}

	public T persist(T entity) {
		sessionFactory.getCurrentSession().persist(entity);

		return entity;
	}

	protected Session getSession() throws DataAccessResourceFailureException,
			IllegalStateException {
		return new FlushModeSession(sessionFactory.getCurrentSession(),
				queryFlushMode);
	}

	/**
	 * Use this inside subclasses as a convenience method.
	 */
	@SuppressWarnings("unchecked")
	protected List<T> findByCriteria(Criterion... criterion) {
		Criteria crit = getSession().createCriteria(getPersistentClass());
		for (Criterion c : criterion) {
			crit.add(c);
		}
		return crit.list();
	}

	/**
	 * Use this inside subclasses as a convenience method.
	 */
	@SuppressWarnings("unchecked")
	protected List<T> findByCriteriaPageByPage(int firstResult, int maxResults,
			Criterion... criterion) {
		Criteria criteria = getSession().createCriteria(getPersistentClass());
		for (Criterion c : criterion) {
			criteria.add(c);
		}
		criteria.setFirstResult(firstResult);
		criteria.setMaxResults(maxResults);
		return criteria.list();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void flush() {
		sessionFactory.getCurrentSession().flush();
	}

	public void evict(T entity) {
		sessionFactory.getCurrentSession().evict(entity);
	}
}
