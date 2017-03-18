package com.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Deposit
 */
@WebServlet("/Deposit")
public class Deposit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deposit() {
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
		PrintWriter pw=response.getWriter();
		 HttpSession session=request.getSession();
		 System.out.print(" in DEposit");
		   String accno=(String)session.getAttribute("acc");
		   String deposit=(String)session.getAttribute("deposit");
		 System.out.print(accno);
		 System.out.print(deposit);
		// String deposit2=request.getParameter("deposit");
		 //double deposit=Double.parseDouble(deposit2);
		 double balance=0;
		// String name=null;
		   Connection con=null;
		   Statement st;
		   try {
			   System.out.print("in try");
				Class.forName("com.mysql.jdbc.Driver");
				
		    con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
				System.out.print("connection established");
			 //  Statement st=(Statement) con.createStatement();
			
		   String sql="SELECT amount FROM  customer WHERE  accno=?";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setString(1,accno);
		   ResultSet rs=ps.executeQuery();
		   System.out.print("query executed");
		   while(rs.next()) {
			    balance=Double.parseDouble(rs.getString("amount"));
			   // name=rs.getString("name");
			    System.out.println("balance is"+balance);
		   }
		   System.out.println("b4 sendig params");
		   balance=balance+Double.parseDouble(deposit);
		   System.out.println(balance);
		   sql="update customer set amount="+balance+" where accno="+accno;
		    st=con.createStatement();
		    int i=st.executeUpdate(sql);
		    if(i>0) {
		   System.out.print("query executed");
		  // pw.println("Amount Rs "+deposit+" has been deposited into the account having account number "+accno+".");
		 //  pw.println("New Balance is "+balance);
			  sql="insert into transaction(Account_no,Amount,Type) values('"+accno+"',"+deposit+",'deposit')";
			   System.out.print("transactions insertion");
			    st=con.createStatement();
			   st.executeUpdate(sql);
			   RequestDispatcher rd=request.getRequestDispatcher("depositsuccess.jsp?deposit1="+deposit+"&accno1="+accno);
			   rd.forward(request, response);
			   
		    }
		   }catch(SQLException e) {
			   System.out.println("sql error");
		   }catch(ClassNotFoundException e) {
			   System.out.println("classnotfound error");
		   }
	}

}
