<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>balance home</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<link rel="stylesheet" type="text/css" href="ss.css"/>
<style type="text/css">
#form {
	top:50%;
	text-align:left;
	font-size:25px;
       left:40%;
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
<div id="h">BANK BANK</div>
<div id="tagline">...the bank you can bank upon</div>
</div></div>
<div id="content">
<div id="form">
 <form action="balance" method="post" >
   Account Number: <br>

   <input type="text" name="acc" /> <br>
<br>
   <input type="submit" value="Submit"  /> 
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
</div>
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div>
</div>
</div>
</body>
</html>