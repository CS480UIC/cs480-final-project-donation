package employee_entity.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employee_entity.dao.EmployeeDao;
import employee_entity.domain.Employee;
import store_entity.dao.StoreDao;
import store_entity.domain.Store;

/**
 * Servlet implementation class UserServlet
 */

public class EmployeeServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeServletUpdate() {
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
		EmployeeDao employeedao = new EmployeeDao();
		Employee employee = null;

		if(method.equals("search"))
		{
			try {
				employee = employeedao.findByEmployee_name(request.getParameter("first_name"), request.getParameter("last_name"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(employee.getFirst_name()!=null && employee.getLast_name()!=null){
				request.setAttribute("employee", employee);
				request.getRequestDispatcher("/jsps/employee/employee_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Employee not found");
				request.getRequestDispatcher("/jsps/employee/employee_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
		    employee = new Employee();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
		    
			employee.setGender(request.getParameter("gender"));
			employee.setPosition(request.getParameter("position"));
			employee.setEmail(request.getParameter("email"));		
			employee.setFirst_name(request.getParameter("first_name"));
			employee.setLast_name(request.getParameter("last_name"));
            employee.setStore_id(Integer.parseInt(request.getParameter("store_id")));
			

			try {
				employeedao.update(employee);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("employee", employee);
			request.setAttribute("msg", "Employee Info Updated.");
			request.getRequestDispatcher("/jsps/employee/employee_read_output.jsp").forward(request, response);
		}
	}
}



