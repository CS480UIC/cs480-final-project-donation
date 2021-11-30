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
		Order order = null;

		if(method.equals("search"))
		{
			try {
				order = orderdao.findOrderById(Integer.valueOf(request.getParameter("order_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(order.getOrder_id()!=null){
				request.setAttribute("order", order);
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
		    order = new Order();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			try {
				order.setOrder_date(new SimpleDateFormat("dd/MM/yyyy").parse(info.get(1)));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			order.setTotal_amount(Double.valueOf(info.get(2)));
			order.setSales_id(Integer.valueOf(info.get(3)));
				
			
			order.setOrder_id(Integer.valueOf(request.getParameter("order_id")));

			try {
				orderdao.updateOrderById(order);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("order", order);
			request.setAttribute("msg", "Order Info Updated.");
			request.getRequestDispatcher("/jsps/Order/order_read_output.jsp").forward(request, response);
		}
	}
}



