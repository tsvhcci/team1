//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.2-hudson-jaxb-ri-2.2-63- 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2014.09.11 at 05:56:05 PM CDT 
//


package com.optumhealth.hcci;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import org.jvnet.jaxb2_commons.lang.CopyStrategy;
import org.jvnet.jaxb2_commons.lang.CopyTo;
import org.jvnet.jaxb2_commons.lang.Equals;
import org.jvnet.jaxb2_commons.lang.EqualsStrategy;
import org.jvnet.jaxb2_commons.lang.HashCode;
import org.jvnet.jaxb2_commons.lang.HashCodeStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBCopyStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBEqualsStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBHashCodeStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBToStringStrategy;
import org.jvnet.jaxb2_commons.lang.ToString;
import org.jvnet.jaxb2_commons.lang.ToStringStrategy;
import org.jvnet.jaxb2_commons.locator.ObjectLocator;
import org.jvnet.jaxb2_commons.locator.util.LocatorUtils;


/**
 * <p>Java class for Step complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Step">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="geoAvgCost" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="stepCode" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="stepDetail_URI" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="stepName" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Step", propOrder = {
    "geoAvgCost",
    "stepCode",
    "stepDetailURI",
    "stepName"
})
public class Step implements Serializable, Cloneable, CopyTo, Equals, HashCode, ToString
{

    private final static long serialVersionUID = 1L;
    protected int geoAvgCost;
    @XmlElement(required = true)
    protected String stepCode;
    @XmlElement(name = "stepDetail_URI", required = true)
    protected String stepDetailURI;
    @XmlElement(required = true)
    protected String stepName;

    /**
     * Default no-arg constructor
     * 
     */
    public Step() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public Step(final int geoAvgCost, final String stepCode, final String stepDetailURI, final String stepName) {
        this.geoAvgCost = geoAvgCost;
        this.stepCode = stepCode;
        this.stepDetailURI = stepDetailURI;
        this.stepName = stepName;
    }

    /**
     * Gets the value of the geoAvgCost property.
     * 
     */
    public int getGeoAvgCost() {
        return geoAvgCost;
    }

    /**
     * Sets the value of the geoAvgCost property.
     * 
     */
    public void setGeoAvgCost(int value) {
        this.geoAvgCost = value;
    }

    /**
     * Gets the value of the stepCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getStepCode() {
        return stepCode;
    }

    /**
     * Sets the value of the stepCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStepCode(String value) {
        this.stepCode = value;
    }

    /**
     * Gets the value of the stepDetailURI property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getStepDetailURI() {
        return stepDetailURI;
    }

    /**
     * Sets the value of the stepDetailURI property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStepDetailURI(String value) {
        this.stepDetailURI = value;
    }

    /**
     * Gets the value of the stepName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getStepName() {
        return stepName;
    }

    /**
     * Sets the value of the stepName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStepName(String value) {
        this.stepName = value;
    }

    public String toString() {
        final ToStringStrategy strategy = JAXBToStringStrategy.INSTANCE;
        final StringBuilder buffer = new StringBuilder();
        append(null, buffer, strategy);
        return buffer.toString();
    }

    public StringBuilder append(ObjectLocator locator, StringBuilder buffer, ToStringStrategy strategy) {
        strategy.appendStart(locator, this, buffer);
        appendFields(locator, buffer, strategy);
        strategy.appendEnd(locator, this, buffer);
        return buffer;
    }

    public StringBuilder appendFields(ObjectLocator locator, StringBuilder buffer, ToStringStrategy strategy) {
        {
            int theGeoAvgCost;
            theGeoAvgCost = this.getGeoAvgCost();
            strategy.appendField(locator, this, "geoAvgCost", buffer, theGeoAvgCost);
        }
        {
            String theStepCode;
            theStepCode = this.getStepCode();
            strategy.appendField(locator, this, "stepCode", buffer, theStepCode);
        }
        {
            String theStepDetailURI;
            theStepDetailURI = this.getStepDetailURI();
            strategy.appendField(locator, this, "stepDetailURI", buffer, theStepDetailURI);
        }
        {
            String theStepName;
            theStepName = this.getStepName();
            strategy.appendField(locator, this, "stepName", buffer, theStepName);
        }
        return buffer;
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if (!(object instanceof Step)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final Step that = ((Step) object);
        {
            int lhsGeoAvgCost;
            lhsGeoAvgCost = this.getGeoAvgCost();
            int rhsGeoAvgCost;
            rhsGeoAvgCost = that.getGeoAvgCost();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "geoAvgCost", lhsGeoAvgCost), LocatorUtils.property(thatLocator, "geoAvgCost", rhsGeoAvgCost), lhsGeoAvgCost, rhsGeoAvgCost)) {
                return false;
            }
        }
        {
            String lhsStepCode;
            lhsStepCode = this.getStepCode();
            String rhsStepCode;
            rhsStepCode = that.getStepCode();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "stepCode", lhsStepCode), LocatorUtils.property(thatLocator, "stepCode", rhsStepCode), lhsStepCode, rhsStepCode)) {
                return false;
            }
        }
        {
            String lhsStepDetailURI;
            lhsStepDetailURI = this.getStepDetailURI();
            String rhsStepDetailURI;
            rhsStepDetailURI = that.getStepDetailURI();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "stepDetailURI", lhsStepDetailURI), LocatorUtils.property(thatLocator, "stepDetailURI", rhsStepDetailURI), lhsStepDetailURI, rhsStepDetailURI)) {
                return false;
            }
        }
        {
            String lhsStepName;
            lhsStepName = this.getStepName();
            String rhsStepName;
            rhsStepName = that.getStepName();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "stepName", lhsStepName), LocatorUtils.property(thatLocator, "stepName", rhsStepName), lhsStepName, rhsStepName)) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object object) {
        final EqualsStrategy strategy = JAXBEqualsStrategy.INSTANCE;
        return equals(null, null, object, strategy);
    }

    public int hashCode(ObjectLocator locator, HashCodeStrategy strategy) {
        int currentHashCode = 1;
        {
            int theGeoAvgCost;
            theGeoAvgCost = this.getGeoAvgCost();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "geoAvgCost", theGeoAvgCost), currentHashCode, theGeoAvgCost);
        }
        {
            String theStepCode;
            theStepCode = this.getStepCode();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "stepCode", theStepCode), currentHashCode, theStepCode);
        }
        {
            String theStepDetailURI;
            theStepDetailURI = this.getStepDetailURI();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "stepDetailURI", theStepDetailURI), currentHashCode, theStepDetailURI);
        }
        {
            String theStepName;
            theStepName = this.getStepName();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "stepName", theStepName), currentHashCode, theStepName);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

    public Object clone() {
        return copyTo(createNewInstance());
    }

    public Object copyTo(Object target) {
        final CopyStrategy strategy = JAXBCopyStrategy.INSTANCE;
        return copyTo(null, target, strategy);
    }

    public Object copyTo(ObjectLocator locator, Object target, CopyStrategy strategy) {
        final Object draftCopy = ((target == null)?createNewInstance():target);
        if (draftCopy instanceof Step) {
            final Step copy = ((Step) draftCopy);
            int sourceGeoAvgCost;
            sourceGeoAvgCost = this.getGeoAvgCost();
            int copyGeoAvgCost = strategy.copy(LocatorUtils.property(locator, "geoAvgCost", sourceGeoAvgCost), sourceGeoAvgCost);
            copy.setGeoAvgCost(copyGeoAvgCost);
            if (this.stepCode!= null) {
                String sourceStepCode;
                sourceStepCode = this.getStepCode();
                String copyStepCode = ((String) strategy.copy(LocatorUtils.property(locator, "stepCode", sourceStepCode), sourceStepCode));
                copy.setStepCode(copyStepCode);
            } else {
                copy.stepCode = null;
            }
            if (this.stepDetailURI!= null) {
                String sourceStepDetailURI;
                sourceStepDetailURI = this.getStepDetailURI();
                String copyStepDetailURI = ((String) strategy.copy(LocatorUtils.property(locator, "stepDetailURI", sourceStepDetailURI), sourceStepDetailURI));
                copy.setStepDetailURI(copyStepDetailURI);
            } else {
                copy.stepDetailURI = null;
            }
            if (this.stepName!= null) {
                String sourceStepName;
                sourceStepName = this.getStepName();
                String copyStepName = ((String) strategy.copy(LocatorUtils.property(locator, "stepName", sourceStepName), sourceStepName));
                copy.setStepName(copyStepName);
            } else {
                copy.stepName = null;
            }
        }
        return draftCopy;
    }

    public Object createNewInstance() {
        return new Step();
    }

}
