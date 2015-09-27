/**
 * 
 */
package org.cuatrovientos.inventory.models;

import java.util.Set;

/**
 * Represents Status for the device
 * @author Pello Altadill
 */
public class DeviceStatus {
	private Long id;
	private String name;
	private Set<Device> devices;
	
	/**
	 * default constructor
	 */
	public DeviceStatus () {
		
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
	 * @return the devices
	 */
	public Set<Device> getDevices() {
		return devices;
	}

	/**
	 * @param devices the devices to set
	 */
	public void setDevices(Set<Device> devices) {
		this.devices = devices;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "DeviceStatus [id=" + id + ", name=" + name + ", devices=" + devices + "]";
	}


	
}
