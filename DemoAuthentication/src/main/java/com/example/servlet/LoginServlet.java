package com.example.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;

import java.io.IOException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		//verify identity
		if("admin".equals(username) && "123".equals(password)) {
			
			//1. change session id immediately
			request.changeSessionId();
			
			HttpSession session = request.getSession();
			
			session.setAttribute("user", "Administrator");
			session.setAttribute("role", "ADMIN");
			
			
			response.sendRedirect("admin/dashboard.jsp");
			//RequestDispatcher dispatcher = request.getRequestDispatcher("admin/dashboard.jsp");
			//dispatcher.forward(request, response);
			
		}else if("user".equals(username) && "123".equals(password)) {
			//case user
			
			request.changeSessionId();
			//create new session id for user
			HttpSession session = request.getSession();
			
			session.setAttribute("user", "Sokha User");
			session.setAttribute("role", "USER");
			
			
			response.sendRedirect("admin/dashboard.jsp");
			//RequestDispatcher dispatcher = request.getRequestDispatcher("admin/dashboard.jsp");
			//dispatcher.forward(request, response);
			
		}else {
			//incorrect username or password
			response.sendRedirect(request.getContextPath() + "/index.jsp?error=Incorrect Username or Password!");
		}
	
	
	}

}
