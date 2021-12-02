package query5.service;

import java.util.List;

import query5.dao.MinTotalViewDao;
import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class MinTotalViewService {
	private MinTotalViewDao userDao = new MinTotalViewDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> MinTotal() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return userDao.findMinTotalViewAll();
		
	}
}
