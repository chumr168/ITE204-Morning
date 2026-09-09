package com.example.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;

//@WebFilter(description="basic of web filter servlet", urlPatterns= {"/*"})
public class LogFilter implements Filter {
	
	
	public void init(FilterConfig fConfig) throws ServletException {
	  //more code here	
	}
	
	
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) 
			throws IOException, ServletException{
		
		String ipAddress = req.getRemoteAddr();
		
		System.out.println("Remote IP Address: " + ipAddress + ", Time: " + new java.util.Date().toString());
		
		
		chain.doFilter(req, res);
	}
	
	public void destroy() {
		//more code here
	}
	
	
	
}
