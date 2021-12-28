package employee_entity.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employee_entity.dao.EmployeeDao;
import employee_entity.domain.Employee;


/**
 * Servlet implementation class EmployeeServlet
 */

public class EmployeeServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServletDelete() {
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
		EmployeeDao employeeDao = new EmployeeDao();
		Employee employee = null;
		if(method.equals("search"))
		{
			try {
				employee = employeeDao.findByEmployee_name(request.getParameter("first_name"), request.getParameter("last_name"));
				
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		   
			if(employee.getFirst_name()!=null && employee.getLast_name()!= null){
				System.out.println(employee);
				System.out.println("Normal Search");
				request.setAttribute("employee", employee);
				request.getRequestDispatcher("/jsps/employee/employee_delete_output.jsp").forward(request, response);
		}
		 else{
				request.setAttribute("msg", "Employee not found");
				request.getRequestDispatcher("/jsps/employee/employee_read_output.jsp").forward(request, response);
	        }
		}
		else if(method.equals("delete"))
		{	
			try {
				employeeDao.delete(request.getParameter("first_name"),request.getParameter("last_name"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("msg", "Emloyee Deleted");
			request.getRequestDispatcher("/jsps/employee/employee_read_output.jsp").forward(request, response);
		}
	}
}



