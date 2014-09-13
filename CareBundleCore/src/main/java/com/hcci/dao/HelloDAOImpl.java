package com.hcci.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Component;

import com.hcci.entity.HelloEntity;

@Component
public class HelloDAOImpl extends GenericHibernateDao<HelloEntity, Serializable>implements HelloDAO{

	public List<HelloEntity> getAll() {
		return loadAll(HelloEntity.class);
	}


}
