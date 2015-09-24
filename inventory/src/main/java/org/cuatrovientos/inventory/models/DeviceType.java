/**
 * 
 */
package org.cuatrovientos.inventory.models;

import java.util.Set;

/**
 * Represents a ProductType
 * 
 * @author Pello Altadill
 * @email pello_altadill@cuatrovientos.org
 */
public class DeviceType {
	private Long id;
	private String name;
	private Set<Device> devices;

	/**
	 * default constructor
	 */
	public DeviceType() {

	}

	/**
	 * @param name
	 */
	public DeviceType(String name) {
		this.name = name;
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
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
	 * @param name
	 *            the name to set
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
	 * @param devices
	 *            the devices to set
	 */
	public void setDevices(Set<Device> devices) {
		this.devices = devices;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ProductType [id=" + id + ", name=" + name + ", devices="
				+ devices + "]";
	}

}
