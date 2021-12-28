package store_entity.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store_entity.dao.StoreDao;
import store_entity.domain.Store;

/**
 * Servlet implementation class UserServlet
 */

public class StoreServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StoreServletUpdate() {
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
		StoreDao storedao = new StoreDao();
		Store store = null;

		if(method.equals("search"))
		{
			try {
				store = storedao.findBystore_name(request.getParameter("store_name"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(store.getStore_name()!=null){
				request.setAttribute("store", store);
				request.getRequestDispatcher("/jsps/store/store_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Store not found");
				request.getRequestDispatcher("/jsps/store/store_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
		    store = new Store();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			store.setAddress(info.get(2));
			store.setPhone(info.get(3));
			store.setEmail(info.get(4));	
			
			store.setStore_name(request.getParameter("store_name"));

			try {
				storedao.update(store);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("store", store);
			request.setAttribute("msg", "Store Info Updated.");
			request.getRequestDispatcher("/jsps/store/store_read_output.jsp").forward(request, response);
		}
	}
}



