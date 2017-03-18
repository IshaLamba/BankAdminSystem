package com.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class WithdrawFilter
 */
@WebFilter("/WithdrawFilter")
public class WithdrawFilter implements Filter {

    /**
     * Default constructor. 
     */
    public WithdrawFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		System.out.print("in filter");
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		 String password=request.getParameter("password");
		 HttpServletRequest hreq=(HttpServletRequest)request;
		   HttpSession session=hreq.getSession();
		   String accno=(String)session.getAttribute("acc");
		   String withdraw=(String)session.getAttribute("withdraw");
		   String ename=(String)session.getAttribute("ename");
		   String epass=(String)session.getAttribute("epass");
		//   String ename=(String)session.getAttribute("ename");
		//   String epassword=null;
		 //  System.out.print(ename);
		 System.out.print(accno);
		 System.out.print(withdraw);
		 System.out.print(ename);
		 System.out.print(epass);
		// String deposit2=request.getParame
		 Double balance=0.0;
		 Connection con=null;
		 String  sql;
		 Statement st;
		  ResultSet rs;
		  /*
		 try {
			   System.out.print("in try");
				Class.forName("com.mysql.jdbc.Driver");
				
		    con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","a");
				System.out.print("connection established");
			 //  Statement st=(Statement) con.createStatement();
			
		    sql="SELECT password FROM  employee WHERE  uname='"+ename+"'";
		   st=con.createStatement();
		   
		 rs=st.executeQuery(sql);
		   System.out.print("query executed");
		   while(rs.next()) {
			    epassword=rs.getString("password");
			   // name=rs.getString("name");
			    System.out.println("password is "+password);
		   }
		 */
		   if(!password.equals(epass)) {
		    	  pw.println("wrong password!!");
		    	  RequestDispatcher rd=request.getRequestDispatcher("withdrawhome.jsp");
		    	  rd.include(request,response);
		    	  return;
		      }
		        	//chain.doFilter(request, response);
		// pass the request along the filter chain
		 
		   try {
			   System.out.print("in try");
			Class.forName("com.mysql.jdbc.Driver");	
		     con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
		      System.out.print("connection established");
			   st=(Statement) con.createStatement();
		       sql="SELECT amount FROM  customer WHERE  accno="+accno;
		       rs=st.executeQuery(sql);
		        while(rs.next()) {
		        	   balance=rs.getDouble("Amount");
		        	   System.out.println("balance is"+balance);
		        }
		        if(Double.parseDouble(withdraw)>balance) {
		        	   pw.print("Transaction Error !!!"+"\n"+"There is not sufficient balance in the account. Current balance is "+balance);
		        	    RequestDispatcher rd=request.getRequestDispatcher("withdrawhome.jsp");
		        	    rd.include(request, response);
		        }else {
		        	chain.doFilter(request, response);
		        }
		   
		   }catch(SQLException e) {
			   System.out.println("sql error");
		   }catch(ClassNotFoundException e) {
			   System.out.println("sql error");
		   }
		// pass the request along the filter chain
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
