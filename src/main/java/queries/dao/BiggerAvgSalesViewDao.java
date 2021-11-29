package queries.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import queries.domain.BiggerAvgSalesView;
import tb_user.domain.Tb_User;
import user.domain.User;
import queries.domain.*;


/**
 * DDL functions performed in database
 */
public class BiggerAvgSalesViewDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root";  //TODO change user
	
	/**
	 * password of your user first name to connect to the database
	 */
	private String MySQL_password = "666";  //TODO change password
	
	/**
	 * get the Search result with User fist name 
	 */
	public Tb_User findByUsername(String first_name) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Tb_User user = new Tb_User();
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
			
			String sql = "insert into tb_user values(null,?,?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,user.getFirst_name());
		    preparestatement.setString(2,user.getLast_name());
		    preparestatement.setString(3,user.getPhone());
		    preparestatement.setString(4,user.getAddress());
		    preparestatement.setString(5,user.getEmail());
		    preparestatement.setString(6,user.getPassword());
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public List<Object> findBiggerAvgSalesViewAll() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		List<Object> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
			String sql = "select * from biggerAvgSaleView";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			ResultSet resultSet = preparestatement.executeQuery();			
			while(resultSet.next()){
				BiggerAvgSalesView ordersview = new BiggerAvgSalesView();
				ordersview.setSales_id(resultSet.getInt("sales_id"));
	    		ordersview.setOrder_id(resultSet.getInt("order_id"));
	    		ordersview.setTotal_amount(resultSet.getBigDecimal("total_amount"));
	    		
	    		list.add(ordersview);
			 }
			connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return list;
		
	}
		
}
