package employee_entity.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import employee_entity.domain.Employee;

//import java.util.ArrayList;
//import java.util.List;

import store_entity.domain.Store;
import user.domain.User;

/**
 * DDL functions performed in database
 */
public class EmployeeDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root"; //TODO change user
	
	/**
	 * password of your store_name to connect to the database
	 */
	private String MySQL_password = "666"; //TODO change password

	public Employee findByEmployee_name(String first_name,String last_name) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Employee employee = new Employee();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
		    String sql = "select * from employee where first_name=? and last_name=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,first_name);
		    preparestatement.setString(2,last_name);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	String firstname = resultSet.getString("first_name");
		    	String lastname = resultSet.getString("last_name");
		    	System.out.println(first_name);
		    	System.out.println(last_name);
		    	if(firstname.equals(first_name) && lastname.equals(last_name)) {
		    		employee.setStore_id(resultSet.getInt("Store_id"));
		    		employee.setFirst_name(resultSet.getString("first_name"));
		    		employee.setLast_name(resultSet.getString("last_name"));
		    		employee.setGender(resultSet.getString("gender"));
		    		employee.setPosition(resultSet.getString("position"));
		    		employee.setEmail(resultSet.getString("email"));
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return employee;
	}	
	
	/**
	 * insert Store
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Employee form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
			
			String sql = "insert into employee values(null,?,?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getStore_id());
		    preparestatement.setString(2,form.getFirst_name());
		    preparestatement.setString(3,form.getLast_name());
		    preparestatement.setString(4,form.getGender());
		    preparestatement.setString(5,form.getPosition());
		    preparestatement.setString(6,form.getEmail());
            System.out.print(form);
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
	public void update(Employee form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
			
			String sql = "UPDATE employee SET gender = ?, position = ?, email=? where first_name = ? and last_name = ?";
		
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,form.getGender());
			preparestatement.setString(2,form.getPosition());
			preparestatement.setString(3,form.getEmail());
			   
		    preparestatement.setString(4,form.getFirst_name());
		    preparestatement.setString(5,form.getLast_name());
		    
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
	public void delete(String first_name, String last_name) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
			
			String sql = "delete from employee where first_name = ? and last_name=?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,first_name);
		    preparestatement.setString(2,last_name);
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
