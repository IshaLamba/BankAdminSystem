<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show transactions</title>
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
	String account;
	account=request.getParameter("account");
	System.out.print(account);
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
	Statement st=con.createStatement();
	ResultSet rs;
	rs=st.executeQuery("select Transaction_id,Account_no,Amount,Date,Type from transaction where Account_no='"+account+"'");
	
%>

<table width="200" border="2" align="center">
<tr>
<th>Transaction ID</th>
<th>Account Number</th>
<th>Amount</th>
<th>Date-Time</th>
<th>Type</th>
</tr>

<%
while(rs.next())
{
	
	{%>
		<tr>
		<td><%out.println(rs.getString(1)); %></td>
		<td><%out.println(rs.getString(2)); %></td>
		<td><%out.println(rs.getString(3)); %></td>
		<td><%out.println(rs.getString(4));%></td>
		<td><%out.println(rs.getString(5));%></td>
		
		</tr>
	<% }
	
}
}catch(Exception e)
{
	out.println("i am erroneous");
}
%>
</table></div>
<ul>
   <li><a href="E profile.html">HOME</a></li>
  <li><a href="Branches2.jsp">BRANCHES</a></li>
  <li><a href="PrivacyPolicy2.html">PRIVACY POLICY</a></li>
 <li><a href="feedback form2.html">FEEDBACK</a></li>
  <li><a href="aboutUs2.html">ABOUT US</a></li>
 <li><a href="contactUs2.html">CONTACT US</a></li>
</ul><br>
<br><br><br>
</div>
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div></div>
</body>
</html>