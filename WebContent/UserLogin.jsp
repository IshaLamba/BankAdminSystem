<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page
   import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>new user registration</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<style type="text/css">
#one {
	font-size:40px;
	text-align:center;
	position:absolute;
        top:30%;
        left:20%;
        color:white;
	
}
#form {
	top:50%;
	text-align:right;
	font-size:20px;
        position:absolute;
        left:35%;
}

#img {
top:55%;
left:5%;
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
          top:20px;
          width:14%;
          margin:0px;
          padding:1%;
          text-align:center;
          height:1%;
          line-height:3%;
	position:relative;
          
 }


h1 {
    color:white;
    text-align:center;
    }
 ul {
      list-style:none;
      padding:0;
      }


</style>
</head>
<body>
<div class="container">
<div class="header">
<div id="h">BANK BANK<br><br></div><div id="tagline">...the bank you can bank upon</div></div></div>
<div id="content">
<script>
  document.firstElementChild.style.zoom = "reset";
  </script>
<div id="one">CUSTOMER REGISTRATION</div>
<br>
<br>
<br>
<br>
<div id="form">
<%
long x=1000000000L;
long y=10000000000L;
Random r= new Random();
long number=x+(long)(Math.random()*(y-x));
HttpSession session1=request.getSession();
session1.setAttribute("Number",number);
%>
<form action="userregisteration" method="post">
NAME:<input type="text" name="name" required><br>
GENDER: Male:<input type="radio" name="gender" value="male" CHECKED>
Female:<input type="radio" name="gender" value="female"><br>
DATE OF BIRTH:<input type="text" name="dob" value="dd-mm-yyyy" required><br>
GUARANTOR ACCOUNT NUMBER:<input type="text" name="guarantor" required><br>
PHONE:<input type="text" name="phone" required><br>
E-MAIL:<input type="text" name="email" required><br>
ADDRESS:<input type="text" name="address" required><br>
DEPOSIT AMOUNT:<input type="text" name="amount"><br>
<input type="submit" name="register"><br>
</form></div>
<ul>
     <li><a href="E profile.html">HOME</a></li>
  <li><a href="Branches2.jsp">BRANCHES</a></li>
  <li><a href="PrivacyPolicy2.html">PRIVACY POLICY</a></li>
 <li><a href="feedback form2.html">FEEDBACK</a></li>
  <li><a href="aboutUs2.html">ABOUT US</a></li>
 <li><a href="contactUs2.html">CONTACT US</a></li>
</ul><br>
<br><br><br>

<div id="five"><marquee direction="up" scrollamount="5">
<ul>
<li>**New service charges w.e.f.01/08/2015.</li><br>
<br>
<li>**Half-yearly interest on Savings Bank Accounts will be credited to the accounts on 25th December and 25th June henceforth. </li><br>
<br>
<li>**After receiving new CTS standard cheque book,please return the old non-CTS cheque book to bank.</li><br>
<br>
<li>**Complain to local police/cyber crime authorities against fictious offers of money from abroad.</li><br>
<br>
<li>**Beware of fictious offers/lottery winnings/cheap fund offers.</li><br>
<br>
<li>**The bank will never ask for your account details through untrustworthy sources.</li><br>
</ul>
</marquee></div>
<div id="four"><p><h1>NEWS AND EVENTS</h1></p></div><br><br>
<div id="img">
<a href="abc"><img src="image/21.jpg" height="300px" width="400px"/></a>
</div>
</div>
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div>
</div>
</body>
</html>