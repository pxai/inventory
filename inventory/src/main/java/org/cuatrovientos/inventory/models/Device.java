 /**
 * 
 */
package org.cuatrovientos.inventory.models;

/**
 * Represents a Device
 * 
 *  * 
 * @author Pello Altadill
 * @email pello_altadill@cuatrovientos.org
 */
public class Device {
	private Long id;
	private String name;
	private String description;
	private DeviceType deviceType;
	
	/**
	 * default constructor
	 */
	public Device () {
		
	}
	

	/**
	 * @param name
	 * @param description
	 * @param type
	 */
	public Device(String name, String description, DeviceType deviceType) {
		this.name = name;
		this.description = description;
		this.deviceType = deviceType;
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the DeviceType
	 */
	public DeviceType getDeviceType() {
		return deviceType;
	}

	/**
	 * @param DeviceType the deviceType to set
	 */
	public void setDeviceType(DeviceType deviceType) {
		this.deviceType = deviceType;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description="
				+ description + "]";
	} 
	
	
}
