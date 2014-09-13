package com.hcci.service;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import net.unicon.springframework.addons.properties.ReloadingPropertyPlaceholderConfigurer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.hcci.dao.CareBundleDAO;
import com.hcci.dao.HelloDAO;
import com.hcci.entity.CareBundleEntity;
import com.hcci.entity.HelloEntity;
import com.optumhealth.hcci.CareBundle;
import com.optumhealth.hcci.HelloName;
import com.optumhealth.hcci.HelloResponse;
import com.optumhealth.hcci.TreatmentConditionResponse;

@Path(value = ServiceConstants.CARE_BUNDLE_SERVICE)
@Transactional
public class CareBundleServiceImpl {

	
	@Autowired
	HelloDAO helloDAO;
	
	
	@Autowired
	CareBundleDAO careBundleDAO;
	
	@Autowired
	@Qualifier("propertyBean")
	ReloadingPropertyPlaceholderConfigurer configurer;
	
	
	public void setGetItUsingSpring(String getItUsingSpring) {
		this.getItUsingSpring = getItUsingSpring;
	}

	private String getItUsingSpring;
	
	@GET
	@Produces({MediaType.APPLICATION_JSON})
	@Path(value="/prop")
	public String getprop(){
		return getItUsingSpring;
	}
	
	@GET
	@Produces({MediaType.APPLICATION_JSON})
	@Path(value="/names")
	public HelloResponse getAllNames(){
		HelloResponse resp = new HelloResponse();
		for(HelloEntity helloEnty: helloDAO.getAll()){
			HelloName name = new HelloName();
			name.setId(helloEnty.getId());
			name.setName(helloEnty.getName());
			resp.getHelloNames().add(name);
		}
		return resp;
	}
	
	@GET
	@Produces({MediaType.APPLICATION_JSON})
	@Path(value=ServiceConstants.GET_TREATMNT_CNDN_CARE_BUNDLES+"/{"+ServiceConstants.KEYWORD_TEXT+"}/{"+ServiceConstants.ZIP_CODE+"}/{"+ServiceConstants.GEO_TYPE+"}")
	public TreatmentConditionResponse getCareBundles( 
			@PathParam(value = ServiceConstants.KEYWORD_TEXT) String keywordText,
			@PathParam(value = ServiceConstants.ZIP_CODE) String zipcode,
			@PathParam(value = ServiceConstants.GEO_TYPE) String geotype){
		TreatmentConditionResponse resp = new TreatmentConditionResponse();
		resp.setTreatmentConditionName(keywordText);
		List<CareBundleEntity> careBundles = careBundleDAO.getCareBundles(keywordText,zipcode,geotype);
		for(CareBundleEntity careBundleentity: careBundles){
			CareBundle careBundle = new CareBundle();
			careBundle.setCareBundleCode(careBundleentity.getCarepathCode());
			careBundle.setCareBundleDetailURI(careBundleentity.getCareBndleDtailDescUri());
			careBundle.setCareBundleName(careBundleentity.getCareBundleName());
			careBundle.setCareBundleQualityURI(careBundleentity.getCareBundleQltyUrl());
			careBundle.setCareBundleRestURI(getRestUriforCost(zipcode, careBundleentity.getCarepathCode(),geotype));
			resp.getCareBundles().add(careBundle);
		}
		
		return resp;
	 }
		
	private String getRestUriforCost(String zipcode,String carepathCode, String geotype){
		String uri="";
		StringBuffer buffer = new StringBuffer(uri);
		buffer.append(ServiceConstants.CARE_BUNDLE_COST_SERVICE);
		buffer.append(ServiceConstants.GET_CARE_BUNDLES_COST);
		 buffer.append("?"+ServiceConstants.CAREPATH_CODE+"="+carepathCode+"&"+ServiceConstants.GEO_TYPE+"="+geotype+"&"+ServiceConstants.GEO_VALUE+"="+zipcode);
		return buffer.toString();
	}
	
	
}
