package tb_user.service;

import java.util.List;

import tb_user.dao.Tb_UserDao;
import tb_user.domain.Tb_User;
import user.dao.UserDao;
import user.domain.User;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class Tb_UserService {
	private Tb_UserDao userDao = new Tb_UserDao();
	
	/**
	 * Register a user
	 */
	public void regist(User form) throws Tb_UserException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		
		// check the user name
		Tb_User user = userDao.findByUsername(form.getFirst_name());
		if(user.getFirst_name()!=null && user.getFirst_name().equals(form.getFirst_name())) throw new Tb_UserException("This user name has been registered!");
		userDao.add(form);
	}
	
	
	/**
	 * Login function
	 */
	public void login(User form) throws Tb_UserException, ClassNotFoundException, InstantiationException, IllegalAccessException {
		Tb_User user = userDao.findByUsername(form.getFirst_name());
		if(user.getFirst_name()==null) throw new Tb_UserException("The user is not in the database");
		
		String password = user.getPassword();
		
		if(password!=null && !password.equals(form.getPassword()))
			throw new Tb_UserException(" The password is not right");
		
	}
	
	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return userDao.findall();
		
	}
}
