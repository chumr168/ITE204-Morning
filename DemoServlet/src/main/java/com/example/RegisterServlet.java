package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//called method doPost by passing request and response object
		doPost(request, response);
	}
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String userEmail = request.getParameter("useremail");
		String userPass = request.getParameter("userpassword");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
    	out.println("<head><title>Data submission</title></head>");
    	out.println("<body>");
    	out.println("<h1 style='color: red;'>Server Received Data</h1>");
    	out.println("<p>Username is: "+ userName +"</p>");
    	out.println("<p>User Email is: "+ userEmail +"</p>");
    	out.println("<p>User Password is: "+ userPass +"</p>");
    	out.println("</body>");
    	out.println("</html>");
	
	}

}
