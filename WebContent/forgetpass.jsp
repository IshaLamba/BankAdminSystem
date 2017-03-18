<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
    <%@page import="java.sql.*" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.DriverManager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forgot password</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<link rel="stylesheet" type="text/css" href="ss.css"/>

<style type="text/css">
#form {
	top:400px;
	text-align:right;
	font-size:30px;
       left:350px;
       position:absolute;
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
          line-height:5%;
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

<% PrintWriter show = response.getWriter();
 try
		{   String web="HOME.html";
			Class.forName("com.mysql.jdbc.Driver");
			String ans=request.getParameter("answer");
			
		    Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
			Statement st= (Statement) con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from employee where security_ans ='"+ans+"'");
		if(rs.next())
			 
			{ %>
			<div id="form"><form action="forgetpass1.jsp" method ="post">
			Enter Your New Password : <input type="password" name="pass1"><br>
			Re-Enter Password : <input type="password" name="pass2"><br><br>
			<input type="submit" value="Change">
			</form></div>
			<% }
		else
		{
			response.sendRedirect("HOME.jsp");
		}
			
		}
catch(Exception e){
	show.println("HI");
}     
%>

<ul>
   <li><a href="button">HOME</a></li>
  <li><a href="button">BRANCHES</a></li>
  <li><a href="button">PRIVACY POLICY</a></li>
 <li><a href="button">GUIDELINES</a></li>
  <li><a href="button">ABOUT US</a></li>
 <li><a href="button">CONTACT US</a></li>
</ul><br>
<br><br><br>

<div id="five"><marquee direction="up" scrollamount="5">

**New service charges w.e.f.01/08/2015.</li><br>
<br>
**Half-yearly interest on Savings Bank Accounts will be credited to the accounts on 25th December and 25th June henceforth.
<br>
<br>
<br>
**After receiving new CTS standard cheque book,please return the old non-CTS cheque book to bank.<br>
<br>
<br>
**Complain to local police/cyber crime authorities against fictious offers of money from abroad.<br>
<br>
<br>
**Beware of fictious offers/lottery winnings/cheap fund offers.<br>
<br>
<br>
**The bank will never ask for your account details through untrustworthy sources.

</marquee></div>

<div id="four"><p><h1>NEWS AND EVENTS</h1></p></div><br><br>
</div>
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee>
</div></div>
</div>

</body>
</html>