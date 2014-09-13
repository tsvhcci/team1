package com.hcci.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="carebundlesteps")
public class CareBundleStepEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 819030209082647004L;

//	@Column(name="cb_id_fk")
//	private int carebundleId;
	
	@Id
	@Column(name="step_id")
	private int stepId;
	
	@Column(name="geo_avg_cost")
	private int geoavgcost;
	
	@Column(name="step_name")
	private String stepName;
	
	@Column(name="step_code")
	private String stepcode;
	
	@Column(name="step_detail_desc_uri")
	private String stepDtailDescUri;

//	public int getCarebundleId() {
//		return carebundleId;
//	}
//
//	public void setCarebundleId(int carebundleId) {
//		this.carebundleId = carebundleId;
//	}

	public int getStepId() {
		return stepId;
	}

	public void setStepId(int stepId) {
		this.stepId = stepId;
	}

	public int getGeoavgcost() {
		return geoavgcost;
	}

	public void setGeoavgcost(int geoavgcost) {
		this.geoavgcost = geoavgcost;
	}

	public String getStepName() {
		return stepName;
	}

	public void setStepName(String stepName) {
		this.stepName = stepName;
	}

	public String getStepcode() {
		return stepcode;
	}

	public void setStepcode(String stepcode) {
		this.stepcode = stepcode;
	}

	public String getStepDtailDescUri() {
		return stepDtailDescUri;
	}

	public void setStepDtailDescUri(String stepDtailDescUri) {
		this.stepDtailDescUri = stepDtailDescUri;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
//		result = prime * result + carebundleId;
		result = prime * result + geoavgcost;
		result = prime
				* result
				+ ((stepDtailDescUri == null) ? 0 : stepDtailDescUri.hashCode());
		result = prime * result + stepId;
		result = prime * result
				+ ((stepName == null) ? 0 : stepName.hashCode());
		result = prime * result
				+ ((stepcode == null) ? 0 : stepcode.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CareBundleStepEntity other = (CareBundleStepEntity) obj;
//		if (carebundleId != other.carebundleId)
//			return false;
		if (geoavgcost != other.geoavgcost)
			return false;
		if (stepDtailDescUri == null) {
			if (other.stepDtailDescUri != null)
				return false;
		} else if (!stepDtailDescUri.equals(other.stepDtailDescUri))
			return false;
		if (stepId != other.stepId)
			return false;
		if (stepName == null) {
			if (other.stepName != null)
				return false;
		} else if (!stepName.equals(other.stepName))
			return false;
		if (stepcode == null) {
			if (other.stepcode != null)
				return false;
		} else if (!stepcode.equals(other.stepcode))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CareBundleStepEntity [stepId=" + stepId + ", geoavgcost=" + geoavgcost
				+ ", stepName=" + stepName + ", stepcode=" + stepcode
				+ ", stepDtailDescUri=" + stepDtailDescUri + "]";
	}
	
	
	
}


