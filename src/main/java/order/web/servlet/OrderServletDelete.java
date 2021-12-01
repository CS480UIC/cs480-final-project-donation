package order.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import order.dao.OrderDao;
import order.domain.Order;


/**
 * Servlet implementation class UserServlet
 */

public class OrderServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServletDelete() {
        super();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		OrderDao orderDao = new OrderDao();
		Order order = null;
		if(method.equals("search"))
		{
			try {
				order = orderDao.findOrderById(Integer.valueOf(request.getParameter("order_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(order.getOrder_id()!=null){
						System.out.println(order.getOrder_id());
						request.setAttribute("orders", order);
						request.getRequestDispatcher("/jsps/Order/order_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "Order not found");
				request.getRequestDispatcher("/jsps/Order/order_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				orderDao.deleteOrderById(Integer.valueOf(request.getParameter("order_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("msg", "Order Deleted");
			request.getRequestDispatcher("/jsps/Order/order_read_output.jsp").forward(request, response);
		}
	}
}



