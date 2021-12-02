package queries.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import queries.service.OrderUserViewService;
import queries.service.SalesWithLessAmountViewService;


/**
 * Servlet implementation class find all salesman whose total amount less 10 dollars in order table
 */

public class findSalesWithLessAmount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SalesWithLessAmountViewService userservice = new SalesWithLessAmountViewService();
		try {
			request.setAttribute("UserList",userservice.findSallWithLessTotlaAmount());
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			List<Object> li = userservice.findSallWithLessTotlaAmount();
			for(int i = 0; i < li.size();i++){
				System.out.println(li.get(i).toString());
			}
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		request.getRequestDispatcher("/jsps/user/q5_list_all_lessSalesView.jsp").forward(request, response);
	}

}
