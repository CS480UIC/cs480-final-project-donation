package order.service;
import order.dao.OrderDao;
import order.domain.Order;
import java.util.List;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class OrderService {
    private OrderDao orderDao = new OrderDao();

    /**
     * create order
     */
    public void createOrder(Order form) throws OrderException, ClassNotFoundException, InstantiationException, IllegalAccessException{
        orderDao.add(form);
    }

    public void updateOrder(Order form) throws OrderException, ClassNotFoundException, InstantiationException, IllegalAccessException{
        Order order = getOrder(form);
        if (order == null) throw new OrderException("This order is not in the database");
        orderDao.updateOrderById(order);
    }

    public void deleteOrderById(Order form) throws OrderException, ClassNotFoundException, InstantiationException, IllegalAccessException{
        Order order = getOrder(form);
        if (order == null) throw new OrderException("This order is not in the database");
        orderDao.deleteOrderById(order.getOrder_id());
    }


    /**
     * get order
     */
    public Order getOrder(Order form) throws OrderException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        Order order = orderDao.findOrderById(form.getOrder_id());
        if(order == null) throw new OrderException("This order is not in the database");
        return order;
    }

    public List<Object> findallItems() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
        return orderDao.findall();

    }
}
