package com.hcci.service;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.hcci.dao.CareBundleCostDAO;
import com.hcci.entity.CareBundleEntity;
import com.hcci.entity.CareBundleStepEntity;
import com.optumhealth.hcci.CareBundleCost;
import com.optumhealth.hcci.CareBundleCostResponse;
import com.optumhealth.hcci.Step;

@Path(value = ServiceConstants.CARE_BUNDLE_COST_SERVICE)
@Transactional
public class CareBundleCostServiceImpl {
	
	
	@Autowired
	CareBundleCostDAO careBundleCostDAO;
	
	@GET
	@Produces({MediaType.APPLICATION_JSON})
	@Path(value=ServiceConstants.GET_CARE_BUNDLES_COST)
	public CareBundleCostResponse getCareBundleCosts(@QueryParam(value = ServiceConstants.CAREPATH_CODE) String carepathcode,
			@QueryParam(value = ServiceConstants.GEO_TYPE) String geotype,
			@QueryParam(value = ServiceConstants.GEO_VALUE) String geovalue){
		CareBundleCostResponse response = new CareBundleCostResponse();
		CareBundleEntity careBundleEntity = careBundleCostDAO.getCareBundleCosts(carepathcode, geovalue,geotype);
		CareBundleCost cost = new CareBundleCost();
		cost.setCareBundleCode(careBundleEntity.getCarepathCode());
		cost.setCareBundleDetailURI(careBundleEntity.getCareBndleDtailDescUri());
		cost.setCareBundleName(careBundleEntity.getCareBundleName());
		cost.setCareBundleQualityURI(careBundleEntity.getCareBundleQltyUrl());
		cost.setGeoAvgCost(careBundleEntity.getGeoAvgCost());
		cost.setGeoType(careBundleEntity.getGeoType());
		cost.setGeoValue(careBundleEntity.getGeoValue());
		response.setCareBundle(cost);
		
		for(CareBundleStepEntity carebndleStepEnty:careBundleEntity.getCarebundlesteps()){
			Step step = new Step();
			step.setGeoAvgCost(carebndleStepEnty.getGeoavgcost());
			step.setStepCode(carebndleStepEnty.getStepcode());
			step.setStepDetailURI(carebndleStepEnty.getStepDtailDescUri());
			step.setStepName(carebndleStepEnty.getStepName());
			response.getSteps().add(step);
		}
		return response;
	}
	
}

	
	
