/**
 * 
 */
package org.cuatrovientos.inventory.dao;

import java.util.List;

import org.cuatrovientos.inventory.models.DeviceType;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.springframework.transaction.annotation.Transactional;

/**
 * implementation of DeviceTypeDAO
 * 
 * @author Pello Altadill
 * @email pello_altadill@cuatrovientos.org
 */
public class DeviceTypeDAO extends GenericDAO<DeviceType> {


	
	/**
	 * Selects all product types by name
	 * 
	 * @return List of products
	 */
	@Transactional(readOnly = true)
	public List<DeviceType> selectByName(String name) {

		List<DeviceType> devicesTypes = null;

		try {
			Query query = getSession()
							.createQuery("from DeviceType s where s.name LIKE :name");
		    query.setParameter("name", "%"+name+"%");
		    
			// We get a generic object list
		    devicesTypes = query.list();
		} catch (HibernateException he) {
			handleException(he);
		}

		return devicesTypes;
	}
	
	/**
	 * Selects all device types by name
	 * 
	 * @return List of device types
	 */
	@Transactional(readOnly = true)
	public List<DeviceType> selectPaginated(Integer number, boolean isAscending) {

		List<DeviceType> devicesTypes = null;
		String order = isAscending?"asc":"desc";
		try {
			Query query = getSession()
					.createQuery("from DeviceType s ORDER BY s.name " + order);
				    query.setMaxResults(number);
		    
			// We get a generic object list
			devicesTypes = query.list();
		} catch (HibernateException he) {
			handleException(he);
		}

		return devicesTypes;
	}

}
