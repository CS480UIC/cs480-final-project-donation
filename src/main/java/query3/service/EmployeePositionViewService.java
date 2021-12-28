package query3.service;

import java.util.List;

import query3.dao.EmployeePositionViewDao;
import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class EmployeePositionViewService {
	private EmployeePositionViewDao userDao = new EmployeePositionViewDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> findEmployeeView() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return userDao.findEmployeePositionViewAll();
		
	}
}
