package com.hcci.entity;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="carebundle")
public class CareBundleEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5340990863836638481L;
	
	@Id
	@Column(name="cb_id")
	private int carebundleId;
	
	@Column(name="geo_type")
	private String geoType;
	
	@Column(name="geo_value")
	private String geoValue;
	
	@Column(name="code")
	private String carepathCode;
	
	@Column(name="care_bundle_name")
	private String careBundleName;
	
	@Column(name="geo_avg_cost")
	private String geoAvgCost;
	
	@Column(name="care_bundle_detail_desc_uri")
	private String careBndleDtailDescUri;
	
	@Column(name="care_bundle_quality_uri")
	private String careBundleQltyUrl;

	public int getCarebundleId() {
		return carebundleId;
	}

	public void setCarebundleId(int carebundleId) {
		this.carebundleId = carebundleId;
	}

	public String getGeoType() {
		return geoType;
	}

	public void setGeoType(String geoType) {
		this.geoType = geoType;
	}

	public String getGeoValue() {
		return geoValue;
	}

	public void setGeoValue(String geoValue) {
		this.geoValue = geoValue;
	}

	public String getCarepathCode() {
		return carepathCode;
	}

	public void setCarepathCode(String carepathCode) {
		this.carepathCode = carepathCode;
	}

	public String getCareBundleName() {
		return careBundleName;
	}

	public void setCareBundleName(String careBundleName) {
		this.careBundleName = careBundleName;
	}

	public String getGeoAvgCost() {
		return geoAvgCost;
	}

	public void setGeoAvgCost(String geoAvgCost) {
		this.geoAvgCost = geoAvgCost;
	}

	public String getCareBndleDtailDescUri() {
		return careBndleDtailDescUri;
	}

	public void setCareBndleDtailDescUri(String careBndleDtailDescUri) {
		this.careBndleDtailDescUri = careBndleDtailDescUri;
	}

	public String getCareBundleQltyUrl() {
		return careBundleQltyUrl;
	}

	public void setCareBundleQltyUrl(String careBundleQltyUrl) {
		this.careBundleQltyUrl = careBundleQltyUrl;
	}

	
	@OneToMany(fetch = FetchType.LAZY)
	@JoinColumn(name = "cb_id_fk",referencedColumnName="cb_id", nullable = false,insertable=false, updatable=false)
	private Set<CareBundleStepEntity> carebundlesteps;
	
	
	public Set<CareBundleStepEntity> getCarebundlesteps() {
		return carebundlesteps;
	}

	public void setCarebundlesteps(Set<CareBundleStepEntity> carebundlesteps) {
		this.carebundlesteps = carebundlesteps;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((careBndleDtailDescUri == null) ? 0 : careBndleDtailDescUri
						.hashCode());
		result = prime * result
				+ ((careBundleName == null) ? 0 : careBundleName.hashCode());
		result = prime
				* result
				+ ((careBundleQltyUrl == null) ? 0 : careBundleQltyUrl
						.hashCode());
		result = prime * result + carebundleId;
		result = prime * result
				+ ((carebundlesteps == null) ? 0 : carebundlesteps.hashCode());
		result = prime * result
				+ ((carepathCode == null) ? 0 : carepathCode.hashCode());
		result = prime * result
				+ ((geoAvgCost == null) ? 0 : geoAvgCost.hashCode());
		result = prime * result + ((geoType == null) ? 0 : geoType.hashCode());
		result = prime * result
				+ ((geoValue == null) ? 0 : geoValue.hashCode());
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
		CareBundleEntity other = (CareBundleEntity) obj;
		if (careBndleDtailDescUri == null) {
			if (other.careBndleDtailDescUri != null)
				return false;
		} else if (!careBndleDtailDescUri.equals(other.careBndleDtailDescUri))
			return false;
		if (careBundleName == null) {
			if (other.careBundleName != null)
				return false;
		} else if (!careBundleName.equals(other.careBundleName))
			return false;
		if (careBundleQltyUrl == null) {
			if (other.careBundleQltyUrl != null)
				return false;
		} else if (!careBundleQltyUrl.equals(other.careBundleQltyUrl))
			return false;
		if (carebundleId != other.carebundleId)
			return false;
		if (carebundlesteps == null) {
			if (other.carebundlesteps != null)
				return false;
		} else if (!carebundlesteps.equals(other.carebundlesteps))
			return false;
		if (carepathCode == null) {
			if (other.carepathCode != null)
				return false;
		} else if (!carepathCode.equals(other.carepathCode))
			return false;
		if (geoAvgCost == null) {
			if (other.geoAvgCost != null)
				return false;
		} else if (!geoAvgCost.equals(other.geoAvgCost))
			return false;
		if (geoType == null) {
			if (other.geoType != null)
				return false;
		} else if (!geoType.equals(other.geoType))
			return false;
		if (geoValue == null) {
			if (other.geoValue != null)
				return false;
		} else if (!geoValue.equals(other.geoValue))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "CareBundleEntity [carebundleId=" + carebundleId + ", geoType="
				+ geoType + ", geoValue=" + geoValue + ", carepathCode="
				+ carepathCode + ", careBundleName=" + careBundleName
				+ ", geoAvgCost=" + geoAvgCost + ", careBndleDtailDescUri="
				+ careBndleDtailDescUri + ", careBundleQltyUrl="
				+ careBundleQltyUrl + ", carebundlesteps=" + carebundlesteps
				+ "]";
	}

	
	

}


