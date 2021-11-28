package store_entity.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import java.util.ArrayList;
//import java.util.List;

import store_entity.domain.Store;
import user.domain.User;

/**
 * DDL functions performed in database
 */
public class StoreDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root"; //TODO change user
	
	/**
	 * password of your store_name to connect to the database
	 */
	private String MySQL_password = "666"; //TODO change password

	public Store findBystore_name(String store_name) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Store store = new Store();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
		    String sql = "select * from store where store_name=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,store_name);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	String storename = resultSet.getString("store_name");
		    	if(storename.equals(store_name)){
		    		store.setStore_name(resultSet.getString("store_name"));
		    		store.setAddress(resultSet.getString("address"));
		    		store.setPhone(resultSet.getString("phone"));
		    		store.setEmail(resultSet.getString("email"));		
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return store;
	}	
	
	/**
	 * insert Store
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Store form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
			
			String sql = "insert into store values(null,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,form.getStore_name());
		    preparestatement.setString(2,form.getAddress());
		    preparestatement.setString(3,form.getPhone());
		    preparestatement.setString(4,form.getEmail());
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param form
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void update(Store form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
			
			String sql = ";UPDATE store SET address = ?, phone = ?,email = ? where store_name = ?";
		
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,form.getAddress());
			preparestatement.setString(2,form.getPhone());
			preparestatement.setString(3,form.getEmail());
			    
		    preparestatement.setString(4,form.getStore_name());
		    
		    preparestatement.executeUpdate();
		    
		    
		   
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param store_name
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String store_name) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
			
			String sql = "delete from store where store_name = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,store_name);
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
				Store store = new Store();
				store.setStore_name(resultSet.getString("store_name"));
	    		store.setPhone(resultSet.getString("phone"));
	    		store.setEmail(resultSet.getString("email"));
	    		list.add(store);
			 }
			connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}
}
