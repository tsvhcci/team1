package com.hcci.dao;

import com.hcci.entity.CareBundleEntity;

public interface CareBundleCostDAO {
	public CareBundleEntity getCareBundleCosts(String carepathcode, String geovalue , String geoType);
}
