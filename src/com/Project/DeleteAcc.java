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
 * Servlet implementation class DeleteAcc
 */
@WebServlet("/DeleteAcc")
public class DeleteAcc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAcc() {
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
		String name=request.getParameter("name");
		String  phone=request.getParameter("phone");
		String accno=request.getParameter("accno");
		String email=request.getParameter("email");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");	//change pass	
			Statement st=con.createStatement();
			ResultSet rs;
			rs=st.executeQuery("select amount from customer where accno='"+accno+"' and phone='"+phone+"' and name='"+name+"' and email='"+email+"';");
			String amount="fg";
			
			if(rs.next())
			{
				
				 amount=rs.getString(1);
				 System.out.print(amount);
				 int i=st.executeUpdate("delete from user where accno='"+accno+"';");
					if(i>0)
					{
						HttpSession session=request.getSession();
						
						session.setAttribute("amount", amount);
						response.sendRedirect("closesuccess.jsp");
					}
			}
			else
			{
				
				RequestDispatcher rd=request.getRequestDispatcher("close.jsp");
				rd.include(request, response);
			}
			 
		
		}catch(Exception e)
		{
			response.sendRedirect("close.jsp");
		}
	}

}
