package com.hcci.dao;

import java.io.Serializable;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;

import com.hcci.entity.CareBundleEntity;

@Component
public class CareBunleCostDAOImpl extends GenericHibernateDao<CareBundleEntity, Serializable>implements CareBundleCostDAO{

	public CareBundleEntity getCareBundleCosts(String carepathcode,
			String geovalue, String geoType) {
		Criteria criteria = getCriteria();
		criteria.add(Restrictions.eq("carepathCode", carepathcode));
		criteria.add(Restrictions.conjunction()).add(Restrictions.eq("geoValue", geovalue));
		return (CareBundleEntity) criteria.uniqueResult();
	}
}
