package com.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class userregisteration
 */
@WebServlet("/userregisteration")
public class userregisteration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userregisteration() {
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
		String guarantor=request.getParameter("guarantor");
		String dob=request.getParameter("dob");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		double amount=Double.parseDouble(request.getParameter("amount"));
		String gender=request.getParameter("gender");
		HttpSession session=request.getSession();
		 long number1=(long) session.getAttribute("Number");
		 
		 String number=number1+"";
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
		Statement stat= con.createStatement();
		ResultSet rs;
		rs=stat.executeQuery("select name from user where accno='"+guarantor+"';");
		if(rs.next())
		{
			int i=stat.executeUpdate("insert into customer(name,dob,gender,email,phone,address,amount,accno) values('"+name+"','"+dob+"','"+gender+"','"+email+"','"+phone+"','"+address+"','"+amount+"','"+number+"');");
		if(i>0)
		{
			request.setAttribute("AccountNo.",number);
			request.setAttribute("Name", name);
			request.setAttribute("Emaile",email);
			RequestDispatcher rd=request.getRequestDispatcher("emaild");
			rd.forward(request, response);
			
		}
		else{
			response.sendRedirect("UserLogin.jsp");
		}
		}
		else
		{
			out.println("Registration failed. Please Register again");
			RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
			rd.include(request, response);
		}
		}
		catch(Exception e)
		{
			response.sendRedirect("UserLogin.jsp");
			
		}
	}

}
