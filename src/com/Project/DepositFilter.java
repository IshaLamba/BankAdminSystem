package com.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
 * Servlet Filter implementation class DepositFilter
 */
@WebFilter("/DepositFilter")
public class DepositFilter implements Filter {

    /**
     * Default constructor. 
     */
    public DepositFilter() {
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
		System.out.print("in Dfilter");
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		 String password=request.getParameter("password");
		 HttpServletRequest hreq=(HttpServletRequest)request;
		   HttpSession session=hreq.getSession();
		   String accno=(String)session.getAttribute("acc");
		   String deposit=(String)session.getAttribute("deposit");
		   
		   String ename=(String)session.getAttribute("ename");
		   String epass=(String)session.getAttribute("epass");
		  // String epassword=null;
		 //  System.out.print(ename);
		 System.out.print(accno);
		 System.out.print(deposit);
		 System.out.print(ename);
		 System.out.print(epass);
		// String deposit2=request.getParame
		 Double balance=0.0;
		 Connection con=null;
		 /*
		 try {
			   System.out.print("in try");
				Class.forName("com.mysql.jdbc.Driver");
				
		    con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/BS","root","a");
				System.out.print("connection established");
			 //  Statement st=(Statement) con.createStatement();
			
		   String sql="SELECT password FROM  employee WHERE  uname='"+ename+"'";
		  Statement st=con.createStatement();
		   
		   ResultSet rs=st.executeQuery(sql);
		   System.out.print("query executed");
		   while(rs.next()) {
			    epassword=rs.getString("password");
			   // name=rs.getString("name");
			    System.out.println("password is "+password);
		   } */
		 
		   if(!password.equals(epass)) {
		    	
		    	  RequestDispatcher rd=request.getRequestDispatcher("deposithome.jsp");
		    	  rd.include(request,response);
		    	  return;
		      }
		        	chain.doFilter(request, response);
		// pass the request along the filter chain
		 
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
