<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
    <%@page import="java.sql.*" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>show feedback</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<style type="text/css">
#table {
top:40%;
position:absolute;
left:6%;
right:6%;
}
table{
text-align:center;
width : 90%;
}
th {color:white;
border: 1px solid black;
    height: 40px;
}
td{color:white;
border: 1px solid black;
    height: 5px;
    padding: 5px;
    width: 35%;
    text-align: center;
    }
    
    ul {
      list-style:none;
      padding:0;
      margin:0;}

ul li a {
          text-decoration:none;
          font-family:Georgia,"Times New Roman",Times,serif;
          background-color:black;
          border:2px solid red;
          color:blue;
          top:85px;
          width:14%;
          margin:0px;
          padding:1%;
          text-align:center;
          height:1%;
          line-height:3%;
	position:relative;
          
 }
</style>
</head>
<body>
<script>
  document.firstElementChild.style.zoom = "reset";
  </script>
<div class="container">
<div class="header">
<div id="h">BANK BANK<br><br></div><div id="tagline">...the bank you can bank upon</div></div></div>
<div id="content">
<div id="table">

<%
 try
		{   
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
			Statement st= (Statement) con.createStatement();
			ResultSet rs;
			rs=st.executeQuery("select * from feedback");%>
			<table border="2" width=100>
			
				<tr>
				<th>Employee ID</th>
				<th>Employee Name</th>
				<th>Comments</th>
				</tr>
			<%while(rs.next())
			{%>
				<tr>
				<td><%out.println(rs.getString(1)); %></td>
				<td><%out.println(rs.getString(2)); %></td>
				<td><%out.println(rs.getString(3)); %></td>
				</tr>
			<%}
		}catch(Exception e)
		{
			out.println("i am erroneuos");
		}%>
		</table>
</div>
<ul>
     <li><a href="A PROFILE.html">HOME</a></li>
  <li><a href="Branches1.jsp">BRANCHES</a></li>
  <li><a href="PrivacyPolicy1.html">PRIVACY POLICY</a></li>
  <li><a href="aboutUs1.html">ABOUT US</a></li>
 <li><a href="contactUs1.html">CONTACT US</a></li>
<li><a href="show_feedback.jsp">VIEW FEEDBACK</a></li>
</ul><br>
<br><br><br>
</div>
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div></div>
</body>
</html>