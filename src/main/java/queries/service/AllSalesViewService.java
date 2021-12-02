package queries.service;

import java.util.List;

import queries.dao.AllSalesViewDao;
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
public class AllSalesViewService {
	private AllSalesViewDao allsalesviewdao = new AllSalesViewDao();
	
	/**
	 * Register a user
	 */
	
	
	public List<Object> findAllSalesView() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return allsalesviewdao.findAllSales();
		
	}
}
