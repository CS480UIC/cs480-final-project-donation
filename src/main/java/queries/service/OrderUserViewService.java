package queries.service;

import java.util.List;

import queries.dao.BiggerAvgSalesViewDao;
import queries.dao.OrderUserViewDao;
import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Ajitesh
 */
public class OrderUserViewService {
	private OrderUserViewDao orderuserviewdao = new OrderUserViewDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> findOrderUsersAllView() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return orderuserviewdao.findOrderUserViewAll();
		
	}
}
