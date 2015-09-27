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
	private String brand;
	private String color;
	private String motherboard;
	private String ram;
	private String cpu;
	private String hardisk;
	private String os;
	private String flash;
	private String interfaces;
	private String description;
	private DeviceStatus deviceStatus;
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
	 * @return the brand
	 */
	public String getBrand() {
		return brand;
	}


	/**
	 * @param brand the brand to set
	 */
	public void setBrand(String brand) {
		this.brand = brand;
	}


	/**
	 * @return the color
	 */
	public String getColor() {
		return color;
	}


	/**
	 * @param color the color to set
	 */
	public void setColor(String color) {
		this.color = color;
	}


	/**
	 * @return the motherboard
	 */
	public String getMotherboard() {
		return motherboard;
	}


	/**
	 * @param motherboard the motherboard to set
	 */
	public void setMotherboard(String motherboard) {
		this.motherboard = motherboard;
	}


	/**
	 * @return the ram
	 */
	public String getRam() {
		return ram;
	}


	/**
	 * @param ram the ram to set
	 */
	public void setRam(String ram) {
		this.ram = ram;
	}


	/**
	 * @return the cpu
	 */
	public String getCpu() {
		return cpu;
	}


	/**
	 * @param cpu the cpu to set
	 */
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}


	/**
	 * @return the hardisk
	 */
	public String getHardisk() {
		return hardisk;
	}


	/**
	 * @param hardisk the hardisk to set
	 */
	public void setHardisk(String hardisk) {
		this.hardisk = hardisk;
	}


	/**
	 * @return the os
	 */
	public String getOs() {
		return os;
	}


	/**
	 * @param os the os to set
	 */
	public void setOs(String os) {
		this.os = os;
	}


	/**
	 * @return the flash
	 */
	public String getFlash() {
		return flash;
	}


	/**
	 * @param flash the flash to set
	 */
	public void setFlash(String flash) {
		this.flash = flash;
	}


	/**
	 * @return the interfaces
	 */
	public String getInterfaces() {
		return interfaces;
	}


	/**
	 * @param interfaces the interfaces to set
	 */
	public void setInterfaces(String interfaces) {
		this.interfaces = interfaces;
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
	 * @return the deviceStatus
	 */
	public DeviceStatus getDeviceStatus() {
		return deviceStatus;
	}


	/**
	 * @param deviceStatus the deviceStatus to set
	 */
	public void setDeviceStatus(DeviceStatus deviceStatus) {
		this.deviceStatus = deviceStatus;
	}


	/**
	 * @return the deviceType
	 */
	public DeviceType getDeviceType() {
		return deviceType;
	}


	/**
	 * @param deviceType the deviceType to set
	 */
	public void setDeviceType(DeviceType deviceType) {
		this.deviceType = deviceType;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Device [id=" + id + ", name=" + name + ", brand=" + brand + ", color=" + color + ", motherboard="
				+ motherboard + ", ram=" + ram + ", cpu=" + cpu + ", hardisk=" + hardisk + ", os=" + os + ", flash="
				+ flash + ", interfaces=" + interfaces + ", description=" + description + ", deviceStatus="
				+ deviceStatus + ", deviceType=" + deviceType + "]";
	}
	
}
