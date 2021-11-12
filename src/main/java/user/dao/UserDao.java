package user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import user.domain.User;



/**
 * DDL functions performed in database
 */
public class UserDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root";  //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "666";  //TODO change password
	
	/**
	 * get the Search result with Username 
	 */
	public User findByUsername(String first_name) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		User user = new User();
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
		    String sql = "select * from tb_user where first_name =?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,first_name);
		    ResultSet resultSet = preparestatement.executeQuery();
		    while(resultSet.next()){
		    	String user_name = resultSet.getString("first_name");
		    	if(user_name.equals(first_name)){
		    		user.setFirst_name(resultSet.getString("first_name"));
		    		user.setPassword(resultSet.getString("password"));
		    		user.setEmail(resultSet.getString("email"));
		    		
		    	}
		    }
		
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return user;
	}
	

	
	
	/**
	 * insert User
	 */
	public void add(User user) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
			
			String sql = "insert into user values(?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,user.getFirst_name());
		    preparestatement.setString(2,user.getPassword());
		    preparestatement.setString(3,user.getEmail());
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		List<Object> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
			String sql = "select * from tb_user";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			ResultSet resultSet = preparestatement.executeQuery();			
			while(resultSet.next()){
				User user = new User();
				user.setFirst_name(resultSet.getString("username"));
	    		user.setPassword(resultSet.getString("password"));
	    		user.setEmail(resultSet.getString("email"));
	    		list.add(user);
			 }
			connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}
		
}
