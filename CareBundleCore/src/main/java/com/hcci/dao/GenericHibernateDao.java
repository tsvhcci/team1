package com.hcci.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Criteria;
import org.hibernate.Session;

/**
 * Generic Base DAO implementation for CRUD
 * 
 * Concrete DAO Class Should extend from GenericHibernateDAO with respective Entity
 * 
 * @author pparida
 * 
 * @param <T>
 * @param <PK>
 */
@SuppressWarnings("unchecked")
public abstract class GenericHibernateDao<T, PK extends Serializable> implements GenericDAO<T, PK> {

	private Class<T> persistentClass;

	@PersistenceContext(unitName = "entityManager")
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return this.entityManager;
	}

	public GenericHibernateDao() {
		this.persistentClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}

	public T read(PK id) {
		return (T) this.entityManager.find(persistentClass, id);
	}

	public List<T> loadAll(Class<T> entityClass) {
		CriteriaQuery<T> query = this.entityManager.getCriteriaBuilder().createQuery(entityClass);
		query.from(entityClass);
		List<T> results = entityManager.createQuery(query).getResultList();
		return results;
	}

	public T makePersistent(T entity) {
		return this.entityManager.merge(entity);
	}

	public void delete(T entityObject) {
		this.entityManager.remove(entityObject);
	}

	public T create(T entity) {
		this.entityManager.persist(entity);
		return entity;
	}

	public T merge(T entity) {
		this.entityManager.merge(entity);
		return entity;
	}

	public List<T> find(String query, String condition) {
		Query sql = this.entityManager.createQuery(query);
		sql.setParameter(1, condition);
		return sql.getResultList();
	}

	public List<T> find(String query, int id) {
		Query sql = this.entityManager.createQuery(query);
		sql.setParameter(1, id);
		return sql.getResultList();
	}

	public List<T> find(String query, Long id) {
		Query sql = this.entityManager.createQuery(query);
		sql.setParameter(1, id);
		return sql.getResultList();
	}

	public List<T> find(String query) {
		return this.entityManager.createQuery(query).getResultList();
	}

	public List<T> find(String queryString, Object... obj) {
		Query query = entityManager.createQuery(queryString);
		for (int i = 0; i < obj.length; i++) {
			query.setParameter(i + 1, obj[i]);
		}
		return query.getResultList();
	}

	public List<Long> findMax(String query) {
		return this.entityManager.createQuery(query).getResultList();
	}
	
	
	public Criteria getCriteria() {
		Session session = this.entityManager.unwrap(Session.class);
		Criteria criteria = session.createCriteria(persistentClass);
		return criteria;

	}
	public Criteria getCriteria(Class<?> clazz) {
		Session session = this.entityManager.unwrap(Session.class);
		Criteria criteria = session.createCriteria(clazz);
		return criteria;

	}
	
}
