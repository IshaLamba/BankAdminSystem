package com.Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Feedback
 */
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
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
		PrintWriter out=response.getWriter();
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String comments=request.getParameter("comments");
		
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
			Statement st= (Statement) con.createStatement();
			ResultSet rs=st.executeQuery("select phone from employee where id='"+id+"'and name='"+name+"';");
			 if(rs.next())
			 {
				 int i=(int)st.executeUpdate("insert into feedback(emp_id,emp_name,comments) values('"+id+"','"+name+"','"+comments+"');");
					
					if(i>0)
					{  
						response.sendRedirect("feedbacksuccessfull.jsp");
					}
					else
					{
						response.sendRedirect("feedback form.html");
						
					}				 
			 }
			 else
			 {
				 response.sendRedirect("feedback form.html");
			 }
			
		}catch(Exception e)
		{
			response.sendRedirect("feedback form.html");
		}
		
	}

}
