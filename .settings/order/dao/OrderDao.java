package order.dao;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import item.domain.Item;
import order.domain.Order;
import user.domain.User;



/**
 * DDL functions performed in database
 */
public class OrderDao {

    /**
     * user name to connect to the database
     */
    private String MySQL_user = "root";  //TODO change user

    /**
     * password of your username to connect to the database
     */
    private String MySQL_password = "666";  //TODO change password

    /**
     * get the Search result with id
     */
    public Order findOrderById(Integer order_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        Order order = new Order();
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
            String sql = "select * from orders where order_id =?";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            preparestatement.setInt(1,order_id);
            ResultSet resultSet = preparestatement.executeQuery();
            while(resultSet.next()){
                order.setOrder_id(resultSet.getInt("order_id"));
                order.setOrder_date(resultSet.getDate("order_date"));
                order.setOrderstatus(resultSet.getString("orderstatus"));
                order.setSales_id(resultSet.getInt("sales_id"));
                order.setUser_id(resultSet.getInt("user_id"));
                order.setTotal_amount(resultSet.getDouble("total_amount"));
            }
            connect.close();
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
        return order;
    }

    /**
     * insert order
     */
    public void add(Order order) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);

            String sql = "insert into orders values(null,?,?,?,?,?)";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            preparestatement.setInt(1,order.getSales_id());
            preparestatement.setInt(2,order.getUser_id());
            preparestatement.setDate(3, (Date) order.getOrder_date());
            preparestatement.setDouble(4,order.getTotal_amount());
            preparestatement.setString(5,order.getOrderstatus());
            preparestatement.executeUpdate();
            connect.close();
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * update order
     */
    public void updateOrderById(Order order) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);

            String sql = "update orders set sales_id = ?, user_id = ?, order_date = ?, total_amount = ? , orderstatus = ? where order_id = ?";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            preparestatement.setInt(1,order.getSales_id());
            preparestatement.setInt(2,order.getUser_id());
            preparestatement.setDate(3, (Date) order.getOrder_date());
            preparestatement.setDouble(4,order.getTotal_amount());
            preparestatement.setString(5, order.getOrderstatus());
            preparestatement.setInt(6, order.getOrder_id());
            preparestatement.executeUpdate();
            connect.close();
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteOrderById(Integer order_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);

            String sql = "delete from orders where order_id = ?";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            preparestatement.setInt(1,order_id);
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
            String sql = "select * from orders";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            ResultSet resultSet = preparestatement.executeQuery();
            while(resultSet.next()){
                Order order = new Order();
                order.setOrder_id(resultSet.getInt("order_id"));
                order.setOrder_date(resultSet.getDate("order_date"));
                order.setOrderstatus(resultSet.getString("orderstatus"));
                order.setSales_id(resultSet.getInt("sales_id"));
                order.setUser_id(resultSet.getInt("user_id"));
                order.setTotal_amount(resultSet.getDouble("total_amount"));
                list.add(order);
            }
            connect.close();
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
        return list;

    }

}
