package store_entity.service;


import java.util.List;

import store_entity.dao.StoreDao;
import store_entity.domain.Store;

/**
 * logic functions such as create
 * @author Kai Qi and Aji
 *
 */
public class StoreService {
	private StoreDao storeDao = new StoreDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Store form) throws StoreException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Store store = storeDao.findBystore_name(form.getStore_name());
		if(store.getStore_name()!=null && store.getStore_name().equals(form.getStore_name())) throw new StoreException("This user name has been registered!");
		storeDao.add(form);
	}
	/**
	 * Login function
	 * @param form
	 * @return
	 * @throws UserException 
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return storeDao.findall();
		
	}
}
