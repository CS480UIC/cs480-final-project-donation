package init.service;

import java.io.IOException;
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
	 * @throws IOException 
	 * 
	 */
	public void initializeDB() throws InitException, ClassNotFoundException, InstantiationException, IllegalAccessException, IOException{
		
		initDao.initialize();
	}
	
	
	
	
}
