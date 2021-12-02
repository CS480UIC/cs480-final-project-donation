package queries.service;

import java.util.List;

import queries.dao.BiggerAvgSalesViewDao;
import queries.dao.OrderUserViewDao;
import queries.dao.SalesWithLessViewDao;
import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Ajitesh
 */
public class SalesWithLessAmountViewService {
	private SalesWithLessViewDao saleswithlessviewdao = new SalesWithLessViewDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> findSallWithLessTotlaAmount() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return saleswithlessviewdao.findOrderUserViewAll();
		
	}
}
