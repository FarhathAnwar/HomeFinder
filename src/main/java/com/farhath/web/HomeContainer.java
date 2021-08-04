package com.farhath.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farhath.web.dao.DatabaseConnector;
import com.farhath.web.model.homeModel;

/**
 * Servlet implementation class HomeContainer
 */
public class HomeContainer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeContainer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		
		// Get all the values from index page
		String property_type="";
		if(request.getParameter("property_type") != null){
			property_type = request.getParameter("property_type");
		}
		
		String area = "";
		if(request.getParameter("area") !=null){
			area = request.getParameter("area");
		}
		
		int beds=0;
		if(request.getParameter("beds") !=null){
			beds = Integer.parseInt(request.getParameter("beds"));
		}
		
		int bathrooms=0;
		if(request.getParameter("bathrooms") !=null){
			bathrooms = Integer.parseInt(request.getParameter("bathrooms"));
		}
		
		/*int size=0;
		if(request.getParameter("size") !=null){
			size = Integer.parseInt(request.getParameter("size"));
		}*/
		
		int price=0;
		if(request.getParameter("price") !=null){
			price = Integer.parseInt(request.getParameter("price"));
		}
		
		pw.println("Your selected items are: ");
		pw.println("property_type: " + property_type + " area: " + area + " beds: " + beds + " bathrooms: "
				+ bathrooms + "size: " +  " price: " + price);
		
		homeModel hm = new homeModel(property_type,area,beds,bathrooms,price);
		
		//DatabaseConnector dbc = new DatabaseConnector();
		//dbc.connect();
		//byte[] imagebytes = dbc.searchResult(hm);
		
		response.sendRedirect("searchResult.jsp");
		
	}

}
