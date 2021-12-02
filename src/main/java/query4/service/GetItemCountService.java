package query4.service;

import java.util.List;

import query4.dao.GetItemCountDao;
import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class GetItemCountService {
	private GetItemCountDao userDao = new GetItemCountDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> GetItem() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return userDao.findGetItemCountAll();
		
	}
}
