package com.hcci.dao;

import java.util.List;

import com.hcci.entity.CareBundleEntity;

public interface CareBundleDAO {

	public List<CareBundleEntity> getCareBundles(String keywordText, String zipcode, String geoType);
	
}
