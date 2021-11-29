package item.dao;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import item.domain.Item;
import order.domain.Order;
import user.domain.User;



/**
 * DDL functions performed in database
 */
public class ItemDao {

    /**
     * user name to connect to the database
     */
    private String MySQL_user = "root";  //TODO change user

    /**
     * password of your username to connect to the database
     */
    private String MySQL_password = "666";  //TODO change password

    /**
     * get the Search result with name and category
     */
    public Item findItemByNameAndCategory(Integer category_id, String itemName) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        Item item = new Item();
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);
            String sql = "select * from item where category_id =? and item_name = ?";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            preparestatement.setInt(1,category_id);
            preparestatement.setString(1, itemName);
            ResultSet resultSet = preparestatement.executeQuery();
            while(resultSet.next()){
                item.setItem_id(resultSet.getInt("item_id"));
                item.setOrder_id(resultSet.getInt("order_id"));
                item.setCart_id(resultSet.getInt("cart_id"));
                item.setCategory_id(resultSet.getInt("category_id"));
                item.setDescription(resultSet.getString("description"));
                item.setItem_name(resultSet.getString("item_name"));
            }

            connect.close();
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
        return item;
    }

    /**
     * insert item
     */
    public void add(Item item) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);

            String sql = "insert into item values(null,?,?,?,?,?)";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            preparestatement.setInt(1,item.getOrder_id());
            preparestatement.setInt(2,item.getCategory_id());
            preparestatement.setInt(3,item.getCart_id());
            preparestatement.setString(4,item.getItem_name());
            preparestatement.setString(5,item.getDescription());
            preparestatement.executeUpdate();
            connect.close();
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * update item
     */
    public void updateItemById(Item item) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);

            String sql = "update item set order_id = ?, category_id = ?, cart_id = ?, item_name = ? , description = ? where item_id = ?";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            preparestatement.setInt(1,item.getOrder_id());
            preparestatement.setInt(2,item.getCategory_id());
            preparestatement.setInt(3, item.getCart_id());
            preparestatement.setString(4,item.getItem_name());
            preparestatement.setString(5, item.getDescription());
            preparestatement.setInt(6, item.getItem_id());
            preparestatement.executeUpdate();
            connect.close();
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteItemById(Integer item_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/donation", MySQL_user, MySQL_password);

            String sql = "delete from item where item_id = ?";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            preparestatement.setInt(1,item_id);
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
            String sql = "select * from item";
            PreparedStatement preparestatement = connect.prepareStatement(sql);
            ResultSet resultSet = preparestatement.executeQuery();
            while(resultSet.next()){
                Item item = new Item();
                item.setItem_id(resultSet.getInt("item_id"));
                item.setOrder_id(resultSet.getInt("order_id"));
                item.setCart_id(resultSet.getInt("cart_id"));
                item.setCategory_id(resultSet.getInt("category_id"));
                item.setDescription(resultSet.getString("description"));
                item.setItem_name(resultSet.getString("item_name"));
                list.add(item);
            }
            connect.close();
        } catch(SQLException e) {
            throw new RuntimeException(e);
        }
        return list;

    }

}
