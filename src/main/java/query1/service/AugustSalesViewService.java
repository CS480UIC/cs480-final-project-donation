package query1.service;

import java.util.List;

import query1.dao.AugustSalesViewDao;
import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class AugustSalesViewService {
	private AugustSalesViewDao userDao = new AugustSalesViewDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> findAugustView() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return userDao.findAugustSalesViewAll();
		
	}
}
