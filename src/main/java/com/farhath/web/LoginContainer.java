package com.farhath.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farhath.web.dao.DatabaseConnector;
import com.farhath.web.model.loginModel;

/**
 * Servlet implementation class LoginContainer
 */
public class LoginContainer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginContainer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DatabaseConnector dbc = new DatabaseConnector();
		dbc.connect();
		
		String username = request.getParameter("username");
		String pass = request.getParameter("login_password");
		
		loginModel lm = new loginModel(username,pass);
		
		dbc.loginUser(lm);
		
		response.sendRedirect("home.jsp");
	}

}
