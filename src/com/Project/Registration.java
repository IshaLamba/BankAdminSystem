package com.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
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

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String security=request.getParameter("security");
		Date date= new Date();
		String regdate=date.toString();
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
		Statement stat= con.createStatement();
		ResultSet rs;
		int i=stat.executeUpdate("insert into employee(name,id,gender,phone,email,address,password,dob,reg_date,security_ans) values"
				+ "('"+name+"','"+id+"','"+gender+"','"+phone+"','"+email+"','"+address+"','"+password+"','"+dob+"','"+regdate+"','"+security+"')");
		
		HttpSession session = request.getSession(true);
		
		if(i>0)
		{
			request.setAttribute("emailid", email);
			request.setAttribute("eid", id);
			request.setAttribute("epassword", password);
			RequestDispatcher rd=request.getRequestDispatcher("email");
			rd.forward(request, response);
		}
		else
		{
		response.sendRedirect("REGISTER.html"); 
			
		}
		}
		catch(Exception e)
		{
			response.sendRedirect("REGISTER.html");
			
		}
	}

}
