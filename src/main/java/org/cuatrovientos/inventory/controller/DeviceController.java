package org.cuatrovientos.inventory.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.cuatrovientos.inventory.dao.DeviceTypeDAO;
import org.cuatrovientos.inventory.dao.GenericDAO;
import org.cuatrovientos.inventory.models.Device;
import org.cuatrovientos.inventory.models.DeviceType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for Device entity
 * @author Pello Altadill
 * @email pello_altadill@cuatrovientos.org
 */
@Controller
public class DeviceController {

	private static final Logger logger = LoggerFactory
			.getLogger(DeviceController.class);
	

	@Autowired
	private GenericDAO<Device> deviceDAO;


	/**
	 * gets a Device and shows a form for update operation
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value={"/devices/detail/{id}"},method=RequestMethod.GET)
	public String deviceDetail (@PathVariable("id") long id, Model model) {	
		logger.info("Showing device detail");
		
		Device device = deviceDAO.selectById(id, Device.class);
			
		// add to model 
		model.addAttribute("device", device);
       
		return "device/deviceDetail";
	
	}
	
	/**
	 * gets a Device and shows a form for update operation
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value={"/devices/update/{id}"},method=RequestMethod.GET)
	public String updateDevice (@PathVariable("id") long id, Model model) {	
		logger.info("Showing form for updating device");
		
		Device device = deviceDAO.selectById(id, Device.class);
			
		// add to model 
		model.addAttribute("device", device);
       
		return "device/update";
	
	}
	
	/**
	 * updates Device  into database
	 * @param deviceType
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/devices/saveupdate", method = RequestMethod.POST)
	public String updateDeviceOk(@ModelAttribute Device device, Model model) {
		logger.info("Updating device");

		deviceDAO.update(device);
		
		// add devicetype id to model, to generate an url to go back 
		model.addAttribute("deviceTypeId", device.getDeviceType().getId());
		
		
		return "device/saveUpdated";
	}
	
	
	/**
	 * saves new device into database
	 * @param deviceType
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/devices/created", method = RequestMethod.POST)
	public String saveOk(@ModelAttribute Device device, Model model) {
		logger.info("Inserting new device");

		deviceDAO.insert(device);
		
		// save the id to use it in an url to go back to detail
		model.addAttribute("idDeviceType",device.getDeviceType().getId());
		
		return "device/created";
	}
	

	
	 /**
	* handles device deletion
	* @param model
	* @return the name of the view to show
	*/
	@RequestMapping(value={"/devices/delete/{id}"},method=RequestMethod.GET)
	public String deleteDevice (@PathVariable("id") long id, Model model) {
		logger.info("Device deletion");
		
		Device device = deviceDAO.selectById(id, Device.class);
		
		// Delete that device
		deviceDAO.delete(device);
		
		// add to model the deleted id
		model.addAttribute("deletedId", id);
		model.addAttribute("deviceTypeId", device.getDeviceType().getId());
      
		return "device/deleted";
	
	}


}
