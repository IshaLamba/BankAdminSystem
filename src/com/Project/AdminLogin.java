package com.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
		// TODO Auto-generated method stub
		String email=request.getParameter("emailid");

		String pass=request.getParameter("password");
		PrintWriter out=response.getWriter();
		
		
		response.setContentType("text/html");
			try{
				String URL="jdbc:mysql://localhost/struts";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=(Connection) DriverManager.getConnection(URL,"root","root");
				
				Statement st= (Statement) con.createStatement();
				System.out.println("Connection established");
				ResultSet rs=st.executeQuery("select name from admin where emailid= '"+email+"'and password= '"+pass+"';");
				System.out.println("Query Executed");
				if(rs.next())
				{
				String	name=rs.getString(1);
					out.println("Welcome"+name);
				RequestDispatcher rd= request.getRequestDispatcher("A PROFILE.html");
				rd.include(request,response);
					
				}
				else{
					response.sendRedirect("HOME.jsp");
				}
				}
				catch(Exception e)
				{
					response.sendRedirect("HOME.jsp");
				}

	}

}
