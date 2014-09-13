package com.hcci.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.Subqueries;
import org.springframework.stereotype.Component;

import com.hcci.entity.CareBundleEntity;
import com.hcci.entity.TreatmentConditionEntity;
@Component
public class CareBundleDAOImpl extends GenericHibernateDao<CareBundleEntity, Serializable>implements CareBundleDAO{

	/**
	 *  select the treatmentcondition with the keywrod text and 
	 *  then find the distinct carepath codes and based on that get the carebundles(carebundle table) with carebundle code
	 */

	public List<CareBundleEntity> getCareBundles(String keywordText, String zipcode,String geoType) {
		
		Criteria criteria = getCriteria();
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(TreatmentConditionEntity.class);
		detachedCriteria.add(Restrictions.eq("treatmentconditionname", keywordText)).setProjection(Projections.distinct(Projections.property("carebundlecode")));
		criteria.add(Subqueries.propertyIn("carepathCode", detachedCriteria));
		criteria.add(Restrictions.eq("geoType", geoType));
		criteria.add(Restrictions.conjunction()).add(Restrictions.eq("geoValue", zipcode));
		return (List<CareBundleEntity>)criteria.list();
	}

	

}
