package com.hcci.service;

public class Test {

	public static void main(String args[]){
		String s="";
//		s.concat(ServiceConstants.CARE_BUNDLE_SERVICE);
//		s.concat(ServiceConstants.GET_TREATMNT_CNDN_CARE_BUNDLES);
//		System.out.println("-------"+s);
		String carepathCode="BP007";
		String zipcode="55343";
		
		StringBuffer buffer = new StringBuffer(s);
		buffer.append(ServiceConstants.CARE_BUNDLE_COST_SERVICE);
		buffer.append(ServiceConstants.GET_CARE_BUNDLES_COST);
		 buffer.append("?cb="+carepathCode+"&geotype=zip&geovalue="+zipcode);
		 
		 System.out.println(buffer.toString());
	}
}
