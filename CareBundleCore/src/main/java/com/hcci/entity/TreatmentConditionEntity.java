package com.hcci.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="treatcond")
public class TreatmentConditionEntity implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3937722993784626869L;

	@Id
	@Column(name="tc_id")
	private int treatmentconditionId;
	
	@Column(name="cb_code")
	private String carebundlecode;
	
	@Column(name="treat_cond_name")
	private String treatmentconditionname;

	public int getTreatmentconditionId() {
		return treatmentconditionId;
	}

	public void setTreatmentconditionId(int treatmentconditionId) {
		this.treatmentconditionId = treatmentconditionId;
	}

	public String getCarebundlecode() {
		return carebundlecode;
	}

	public void setCarebundlecode(String carebundlecode) {
		this.carebundlecode = carebundlecode;
	}

	public String getTreatmentconditionname() {
		return treatmentconditionname;
	}

	public void setTreatmentconditionname(String treatmentconditionname) {
		this.treatmentconditionname = treatmentconditionname;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((carebundlecode == null) ? 0 : carebundlecode.hashCode());
		result = prime * result + treatmentconditionId;
		result = prime
				* result
				+ ((treatmentconditionname == null) ? 0
						: treatmentconditionname.hashCode());
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
		TreatmentConditionEntity other = (TreatmentConditionEntity) obj;
		if (carebundlecode == null) {
			if (other.carebundlecode != null)
				return false;
		} else if (!carebundlecode.equals(other.carebundlecode))
			return false;
		if (treatmentconditionId != other.treatmentconditionId)
			return false;
		if (treatmentconditionname == null) {
			if (other.treatmentconditionname != null)
				return false;
		} else if (!treatmentconditionname.equals(other.treatmentconditionname))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "TreatmentConditionEntity [treatmentconditionId="
				+ treatmentconditionId + ", carebundlecode=" + carebundlecode
				+ ", treatmentconditionname=" + treatmentconditionname + "]";
	}
	
	
}
