package init.service;

import java.util.List;

import init.dao.InitDao;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class InitService {
	private InitDao initDao = new InitDao();
	
	/**
	 * 
	 */
	public void initializeDB() throws InitException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		
		initDao.initialize();
	}
	
	
	
	
}
