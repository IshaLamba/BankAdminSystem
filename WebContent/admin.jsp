<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>

<!-- <script type="text/javascript">
var myVar=setInterval(function () {myTimer()}, 1000);
var counter = 0;
function myTimer() {
    var date = new Date();
    document.getElementById("demo").innerHTML = date.toUTCString();
}
</script> -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<style type="text/css">

#table {
top:50%;
position:absolute;
left:5%;
}
.status {
  position: absolute;
  right: 1px;
  bottom: 1px;
}
a {
    text-decoration: none;
    color:green;
}
h4{
text-align:right;
color : rgb(0, 255, 204);
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
    width: 15%;
    text-align: center;
    }
.user-avatar {
	position:absolute;
	left:50%;
	top:25%;
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
          top:0;
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
<% String key=""; %>
<%
   Date date = new Date();
   out.print( "<h5 align=\"right\"><i>" +date.toString()+"</i></h5>");
%>
<div class="user-avatar">
  <img src="image/images.jpeg" />
  </div>
  <br><br>
<div id="table">
		<table>
		<tr>
		<th><i><u>Name</u></i></th>
		<th><i><u>Id</u></i></th>
		<th><i><u>Gender</u></i></th>
		<th><i><u>Phone</u></i></th>
		<th><b><u><i>Email ID</i></u></b> </th>
		<th><i><u>Address</u></i></th>
		<th><i><u>DOB</u></i>
		<th><i><u>reg_date</u></i>
		</tr>
		
		<%try
		{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
			Statement st= (Statement) con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from employee");
		
		while(rs.next())
			{
		     key=rs.getString(2);  
		      %>
		    
				<tr>
				<td><%out.println(rs.getString(1));%></td>
			    <td><%out.println(rs.getString(2));%></td>
				<td><%out.println(rs.getString(3));%></td>
				<td><%out.println(rs.getString(4));%></td>
				<td><%out.println(rs.getString(5));%></td>
				<td><%out.println(rs.getString(6));%></td>
				<td><%out.println(rs.getString(8));%></td>
				<td><%out.println(rs.getString(9));%></td>
				<td><img src="image/green.png" title="active" width='10' /></td>
				<td><a href="removeemployee.jsp?Id=<%=key%>">Remove</a></td>
				
				</tr>
				
				
				<% }
		
		}catch(Exception e)
		{
			response.sendRedirect("A PROFILE.html");
		}%>
		</table>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
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
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div>
</div>

		
</body>
</html>