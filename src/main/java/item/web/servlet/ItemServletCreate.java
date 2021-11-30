package item.web.servlet;

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
import item.domain.Item;
import item.service.ItemException;
import item.service.ItemService;


/**
 * Servlet implementation class UserServlet
 */

public class ItemServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ItemServletCreate() {
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
		ItemService itemservice = new ItemService();
		Map<String,String[]> paramMap = request.getParameterMap();
		Item form = new Item();
		List<String> info = new ArrayList<String>();

		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		form.setItem_id(Integer.valueOf(info.get(0)));
		form.setCart_id(Integer.valueOf(info.get(1)));
		form.setItem_name(info.get(2));
		form.setDescription(info.get(2));


		try {
			itemservice.createItem(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");

		} catch (ClassNotFoundException | ItemException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}

	}

}
