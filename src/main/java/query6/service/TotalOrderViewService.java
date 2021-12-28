package query6.service;

import java.util.List;

import query6.dao.TotalOrderViewDao;
import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class TotalOrderViewService {
	private TotalOrderViewDao userDao = new TotalOrderViewDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> TotalOrder() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return userDao.findTotalOrderViewAll();
		
	}
}
