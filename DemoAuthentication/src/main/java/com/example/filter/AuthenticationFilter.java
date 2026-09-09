package com.example.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
//all request to admin folder, system will ask for credential (username & password)

@WebFilter("/admin/*")

//@WebFilter(description="check if user request admin folder", urlPatterns= {"/admin/*, /profile/*"})
public class AuthenticationFilter implements Filter{
	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
			throws IOException, ServletException {
		
		//casting request and response to HTTP for using in session
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		
		//Retrieve current session 
		HttpSession session = httpRequest.getSession(false); // true = if no session then create new session, false = (if exist, don't create new session)
		
		//check if user login or not
		if(session == null || session.getAttribute("user") == null) {
			//user not yet login, so redirect them to index.jsp (for login)
			httpResponse.sendRedirect(httpRequest.getContextPath() + "/index.jsp?error=Please login first!");
		}else {
			//user already login
			chain.doFilter(request, response);
		}
		
		
	}
	
	public void destroy() {
		
	}
	
	
	
	
	
	
	
	

}
