package com.farhath.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farhath.web.dao.DatabaseConnector;
import com.farhath.web.model.SignupModel;

/**
 * Servlet implementation class SignupContainer
 */
public class SignupContainer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupContainer() {
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
		
		String fname, lname, address, credit_card, gender, phone, email, password1, password2;
		
		password1=request.getParameter("password");
		password2=request.getParameter("password2");
		
		if(password1.equals(password2)){
			fname=request.getParameter("fname");
			lname=request.getParameter("lname");
			address=request.getParameter("address");
			credit_card=request.getParameter("ccard");
			gender=request.getParameter("gender");
			phone=request.getParameter("phone");
			email=request.getParameter("email");
			
			SignupModel sm = new SignupModel(fname, lname, address, credit_card, gender, phone, email, password1);
			
			int result = dbc.signup(sm);
			//PrintWriter pw = response.getWriter();
			//pw.println(sm.fname+" " + sm.gender);
			
			response.sendRedirect("home.jsp");
			
		}else{
			response.sendError(401,"Passwords donot match");
		}
		
	}

}
