package query7.service;

import java.util.List;

import query7.dao.SalesEmployeeViewDao;
import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class SalesEmployeeViewService {
	private SalesEmployeeViewDao userDao = new SalesEmployeeViewDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> SalesEmployee() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return userDao.findSalesEmployeeViewAll();
		
	}
}
