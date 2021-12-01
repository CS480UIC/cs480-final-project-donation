	package order.web.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity1.domain.Entity1;
import entity1.service.Entity1Exception;
import entity1.service.Entity1Service;
import order.domain.Order;
import order.service.OrderException;
import order.service.OrderService;


/**
 * Servlet implementation class UserServlet
 */

public class OrderServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServletCreate() {
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
		OrderService orderservice = new OrderService();
		Map<String,String[]> paramMap = request.getParameterMap();
		Order form = new Order();
		List<String> info = new ArrayList<String>();

		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		form.setSales_id(Integer.valueOf(info.get(0)));
		form.setUser_id(Integer.valueOf(info.get(1)));
		form.setOrder_date(info.get(2));
		form.setTotal_amount(Double.valueOf(info.get(3)));
		form.setOrderstatus(info.get(4));
		
		
		try {
			orderservice.createOrder(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
			
		} catch (ClassNotFoundException | OrderException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		
	}

}
