package com.Project;

import java.io.IOException;
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
 * Servlet implementation class Withdraw1
 */
@WebServlet("/Withdraw1")
public class Withdraw1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Withdraw1() {
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
		System.out.print("in withdraw1");
		String accno=request.getParameter("acc");
		String withdraw=request.getParameter("withdraw");
         HttpSession session=request.getSession();
         session.setAttribute("acc",accno);
         session.setAttribute("withdraw",withdraw);
         try{
        	 Class.forName("com.mysql.jdbc.Driver");
     		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
     		Statement stat= con.createStatement();
     		ResultSet rs;
     		rs=stat.executeQuery("select name from customer where accno='"+accno+"';");
     		if(rs.next()){
         RequestDispatcher rd=request.getRequestDispatcher("withdrawConfirmation.jsp");
         rd.forward(request, response);
     		}
     		else{
     			response.sendRedirect("withdrawhome.jsp");	
     		}
     		}
         catch(Exception e)
         {
        	 
        	 response.sendRedirect("withdrawhome.jsp");
         }
	}

}
