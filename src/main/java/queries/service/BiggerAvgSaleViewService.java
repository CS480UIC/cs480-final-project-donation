package queries.service;

import java.util.List;

import queries.dao.BiggerAvgSalesViewDao;
import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class BiggerAvgSaleViewService {
	private BiggerAvgSalesViewDao userDao = new BiggerAvgSalesViewDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> findBiggerAvgSaleView() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return userDao.findBiggerAvgSalesViewAll();
		
	}
}
