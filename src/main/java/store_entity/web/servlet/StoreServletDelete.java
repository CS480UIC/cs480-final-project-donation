package store_entity.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store_entity.dao.StoreDao;
import store_entity.domain.Store;


/**
 * Servlet implementation class UserServlet
 */

public class StoreServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreServletDelete() {
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
		StoreDao storeDao = new StoreDao();
		Store store = null;
		if(method.equals("search"))
		{
			try {
				store = storeDao.findBystore_name(request.getParameter("store_name"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(store.getStore_name()!=null){
						System.out.println(store);
						request.setAttribute("store", store);
						request.getRequestDispatcher("/jsps/store/store_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "Store not found");
				request.getRequestDispatcher("/jsps/store/store_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				storeDao.delete(request.getParameter("store_name"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("msg", "Store Deleted");
			request.getRequestDispatcher("/jsps/store/store_read_output.jsp").forward(request, response);
		}
	}
}



