package item.web.servlet;

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

import item.dao.ItemDao;
import item.domain.Item;

/**
 * Servlet implementation class UserServlet
 */

public class ItemServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ItemServletUpdate() {
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
		ItemDao itemdao = new ItemDao();
		Item item = null;

		if(method.equals("search"))
		{
			try {
				item = itemdao.findItemByNameAndCategory(null, request.getParameter("item_name"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(item.getItem_id()!=null){
				request.setAttribute("item", item);
				request.getRequestDispatcher("/jsps/Item/item_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Item not found");
				request.getRequestDispatcher("/jsps/Item/item_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
		    item = new Item();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}

			item.setItem_name((info.get(1)));
			item.setCategory_id(Integer.valueOf(info.get(2)));
			item.setCart_id(Integer.valueOf(info.get(3)));
			item.setItem_id(Integer.valueOf(info.get(4)));
			item.setOrder_id(Integer.valueOf(info.get(5)));
			
			item.setDescription("Ignored");

				
			
			item.setItem_id(Integer.valueOf(request.getParameter("item_id")));

			try {
				itemdao.updateItemById(item);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("item", item);
			request.setAttribute("msg", "Item Info Updated.");
			request.getRequestDispatcher("/jsps/Item/item_read_output.jsp").forward(request, response);
		}
	}
}



