package com.Project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Balance
 */

public class Balance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Balance() {
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
		response.setContentType("text/html");
		String accno=request.getParameter("acc");
		 System.out.print(accno);
		// String deposit2=request.getParameter("deposit");
		 //double deposit=Double.parseDouble(deposit2);
		 double balance=0;
		 String name=null;
		   Connection con=null;
		   try {
			   System.out.print("in try");
				Class.forName("com.mysql.jdbc.Driver");
				
		    con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
				System.out.print("connection established");
			 //  Statement st=(Statement) con.createStatement();
			
		   String sql="SELECT name,amount FROM  customer WHERE  accno=?";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setString(1,accno);
		   ResultSet rs=ps.executeQuery();
		   System.out.print("query executed");
		   if(rs.next()) {
			    balance=rs.getDouble("amount");
			    name=rs.getString("name");
			    System.out.println("balance is"+balance);
			    System.out.println("b4 sendig params");
			    
				 //  String bal=balance+"" ;
				   request.setAttribute("acc",accno);
				   request.setAttribute("name",name);
				   request.setAttribute("balance",balance);
				   RequestDispatcher rd=request.getRequestDispatcher("showbal.jsp");
				   rd.forward(request, response);
		   }
		   
		   }catch(SQLException e) {
			 response.sendRedirect("balancehome.jsp");
		   }catch(ClassNotFoundException e) {
			   response.sendRedirect("balancehome.jsp");
		   }
	}

}
