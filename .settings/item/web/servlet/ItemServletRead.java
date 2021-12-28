package item.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import item.dao.ItemDao;
import item.domain.Item;


/**
 * Servlet implementation class UserServlet
 */

public class ItemServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemServletRead() {
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
		Item item = null;
		ItemDao itemDao = new ItemDao();
		
		try {
			item = itemDao.findItemByNameAndCategory(null, request.getParameter("item_name"));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(item.getItem_id()!=null){
					System.out.println(item);
					request.setAttribute("item", item);
					request.getRequestDispatcher("/jsps/Item/item_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "Item not found");
			request.getRequestDispatcher("/jsps/Item/item_read_output.jsp").forward(request, response);
		}
	}
}



