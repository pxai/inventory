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
import org.cuatrovientos.inventory.models.PaginationFormCriteria;
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
 * Handles requests for DeviceType entity
 * @author Pello Altadill
 * @email pello_altadill@cuatrovientos.org
 */
@Controller
public class DeviceTypeController {

	private static final Logger logger = LoggerFactory
			.getLogger(DeviceTypeController.class);
	
	@Autowired
	private DeviceTypeDAO deviceTypeDAO;

	@Autowired
	private GenericDAO<Device> deviceDAO;


	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/devicetypes", method = RequestMethod.GET)
	public String deviceTypes(Model model) {
		logger.info("Loading DeviceTypes");
		
		DeviceType emptyDeviceType = new DeviceType();
		model.addAttribute("emptyDeviceType", emptyDeviceType);
		
		List<DeviceType> deviceTypes = deviceTypeDAO.selectAll(DeviceType.class);
		model.addAttribute("deviceTypes", deviceTypes);

		model.addAttribute("paginationFormCriteria", new PaginationFormCriteria());

		return "deviceType/deviceTypes";
	}

	/**
	 * shows form to insert new DeviceType
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/devicetypes/new", method = RequestMethod.GET)
	public String newDeviceType (Model model) {
		logger.info("Showing form for new product type");
		
		DeviceType emptyDeviceType = new DeviceType();
		model.addAttribute("deviceType", emptyDeviceType);

		return "deviceType/newDeviceType";
	}

	/**
	 * saves new product type into database
	 * @param deviceType
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/devicetypes/created", method = RequestMethod.POST)
	public String saveDeviceTypeOk (@ModelAttribute DeviceType deviceType, Model model) {
		logger.info("Inserting new product type");
		
		deviceTypeDAO.insert(deviceType);
		
		return "deviceType/created";
	}
	
	
	/**
	 * gets a devicetype and shows a form for update operation
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value={"/devicetypes/update/{id}"},method=RequestMethod.GET)
	public String updateDeviceType (@PathVariable("id") long id, Model model) {	
		logger.info("Showing form for updating product type");
		
		DeviceType deviceType = deviceTypeDAO.selectById(id, DeviceType.class);
			
		// add to model 
		model.addAttribute("deviceType", deviceType);
       
		return "deviceType/update";
	
	}
	
	/**
	 * updates devicetype into database
	 * @param deviceType
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/devicetypes/saveupdate", method = RequestMethod.POST)
	public String updateDeviceTypeOk (@ModelAttribute DeviceType deviceType, Model model) {
		logger.info("Updating Device type");
		
		deviceTypeDAO.update(deviceType);
		
		return "deviceType/saveUpdated";
	}
	

	
	/**
	 * search deviceTypes by name, then return to DeviceTypes
	 * @param deviceType
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/devicetypes/search", method = RequestMethod.POST)
	public String searchDeviceTypes (@ModelAttribute DeviceType deviceType, Model model) {
		logger.info("Searching Device types");
				
		DeviceType emptyDeviceType = new DeviceType();
		model.addAttribute("emptyDeviceType", emptyDeviceType);
		
		List<DeviceType> deviceTypes = deviceTypeDAO.selectByName(deviceType.getName());
		model.addAttribute("deviceTypes", deviceTypes);
		
		return "deviceType/deviceTypes";
	}
	
	/**
	 * search deviceTypes by name, then return to DeviceTypes
	 * @param deviceType
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/devicetypes/paginated", method = RequestMethod.POST)
	public String searchDeviceTypes (@ModelAttribute PaginationFormCriteria criteria, Model model) {
		logger.info("Paginating Device types");
				
		DeviceType emptyDeviceType = new DeviceType();
		model.addAttribute("emptyDeviceType", emptyDeviceType);
		
		List<DeviceType> deviceTypes = deviceTypeDAO.selectPaginated(criteria.getNumber(),criteria.getIsAscending());

		model.addAttribute("deviceTypes", deviceTypes);
		
		return "deviceType/deviceTypes";
	}
	
	 /**
	* handles a request with a simple parameter, using PathVariable
	* @param model
	* @return the name of the view to show
	*/
	@RequestMapping(value={"/devicetypes/detail/{id}"},method=RequestMethod.GET)
	public String detail (@PathVariable("id") long id, Model model) {
		logger.info("Device type detail");
		
		DeviceType deviceType = deviceTypeDAO.selectById(id, DeviceType.class);

		// We create an empty Device in relation with the detailed DeviceType
		Device device = new Device();
		device.setDeviceType(deviceType);
		
		// add to model the detailed product type
		model.addAttribute("deviceType", deviceType);

		// add to model the empty product bounded to this deviceType
		model.addAttribute("device", device);
       
		return "deviceType/deviceTypeDetail";
	
	}

	
	
	 /**
	* handles a request with a simple parameter, using PathVariable
	* @param model
	* @return the name of the view to show
	*/
	@RequestMapping(value={"/devicetypes/delete/{id}"},method=RequestMethod.GET)
	public String delete (@PathVariable("id") long id, Model model) {
		logger.info("Device type deletion");
		
		DeviceType deviceType = deviceTypeDAO.selectById(id, DeviceType.class);
		
		// Delete that DeviceType
		deviceTypeDAO.delete(deviceType);
		
		// add to model the deleted id
		model.addAttribute("deletedId", id);
       
		return "deviceType/deleted";
	
	}
	
	

}
