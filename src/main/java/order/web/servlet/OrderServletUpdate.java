package order.web.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import order.dao.OrderDao;
import order.domain.Order;

/**
 * Servlet implementation class UserServlet
 */

public class OrderServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderServletUpdate() {
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
		OrderDao orderdao = new OrderDao();
		Order orders = null;
		
		System.out.println(request.getParameter("order_id"));
		
		if(method.equals("search"))
		{
			
			
			try {
				orders = orderdao.findOrderById(Integer.parseInt(request.getParameter("order_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(orders.getOrder_id()!=null){
				request.setAttribute("orders", orders);
				request.getRequestDispatcher("/jsps/Order/order_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Order not found");
				request.getRequestDispatcher("/jsps/Order/order_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
		    orders = new Order();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			orders.setSales_id(Integer.valueOf(info.get(2)));
			
			orders.setUser_id(Integer.valueOf(info.get(3)));
			
			orders.setOrder_date(info.get(4));
			
			
			orders.setTotal_amount(Double.valueOf(info.get(5)));
			
			orders.setOrderstatus(info.get(6));
			
			
			orders.setOrder_id(Integer.valueOf(request.getParameter("order_id")));

			try {
				orderdao.updateOrderById(orders);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("orders", orders);
			request.setAttribute("msg", "Order Info Updated.");
			request.getRequestDispatcher("/jsps/Order/order_read_output.jsp").forward(request, response);
		}
	}
}



