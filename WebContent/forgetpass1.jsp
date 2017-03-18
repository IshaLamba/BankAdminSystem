<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forgot password</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<link rel="stylesheet" type="text/css" href="ss.css"/>

<style type="text/css">
#text {
	color:white;
font-size:25px;
left:30%;
top:50%;
font-family:Monotype Corsiva;
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
 #link {
 top:65%;
 position:absolute;
 left:30%;
 }

</style>
</head>
<body>
	<script>
  document.firstElementChild.style.zoom = "reset";
  </script>
<div class="container">
<div class="header">
<div id="h">BANK BANK</div>
<div id="tagline">...the bank you can bank upon</div>
		</div></div>
		<div id="content">

	<div id="text">PASSWORD HAS BEEN SUCCESSFULLY CHANGED!!!</div>
		<%
PrintWriter show = response.getWriter();
try
{   String web="HOME.jsp";
	Class.forName("com.mysql.jdbc.Driver");
	
	
   			Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/struts","root","root");
			Statement st= (Statement) con.createStatement();
			
			String pass3=request.getParameter("pass1");
			String pass4=request.getParameter("pass2");
			if(pass3.equals(pass4))
			{
			 
			int rs1; 
			rs1 = st.executeUpdate("update employee set password='"+pass3+"'");
			if (rs1>0)
			{  //show.println("Please Wait..");
				//show.println("Your Request is Processing....");
			//	Thread.sleep(5000); 
			
			show.println("Your Password Has Been Successfully Changed");	
			show.println("<br>Click <a href= "+web+"> here</a> to Login ");
			}
			else{
				show.println("Sorry! You Have To Try Again");
			}}
			else
		{
			show.println("Sorry You entered the wrong value");
			show.println("<br>Click <a href= "+web+"> here</a> to go.. ");		
		}}
			catch(Exception e){
				show.println("In catch block");
			}
			%>
		
	<div id="link"><a href="HOME.jsp">go back to home page</a></div>
	
	<div id="five">
		<marquee direction="up" scrollamount="5">
			<ul>
				<li>**New service charges w.e.f.01/08/2015.</li>
				<br>
				<br>
				<li>**Half-yearly interest on Savings Bank Accounts will be
					credited to the accounts on 25th December and 25th June henceforth.
				</li>
				<br>
				<br>
				<li>**After receiving new CTS standard cheque book,please
					return the old non-CTS cheque book to bank.</li>
				<br>
				<br>
				<li>**Complain to local police/cyber crime authorities against
					fictious offers of money from abroad.</li>
				<br>
				<br>
				<li>**Beware of fictious offers/lottery winnings/cheap fund
					offers.</li>
				<br>
				<br>
				<li>**The bank will never ask for your account details through
					untrustworthy sources.</li>
				<br>
			</ul>
		</marquee>
	</div>

	<div id="four">
		<p>
		<h1>NEWS AND EVENTS</h1>
		</p>
	</div>
	<br>
	<br>
</div>
<div id="f">
<div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee>
</div></div></div>


</body>
</html>