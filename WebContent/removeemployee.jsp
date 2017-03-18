<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
		try
		{
		String key=request.getParameter("Id");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
		Statement st =  (Statement) con.createStatement();
		int rs;
		int i = st.executeUpdate("delete from employee where id='"+key+"';");
		if(i>0) {
		response.sendRedirect("admin.jsp");
		}
		}catch(Exception e){
			response.sendRedirect("admin.jsp");
		}
		
		%>
</body>
</html>