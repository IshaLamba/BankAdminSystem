<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<link rel="stylesheet" type="text/css" href="ss.css"/>

<style type="text/css">
 
#one {
      position:absolute;
      width:175px;
      height:60px;
      left:700px;
      top:200px;
      text-align:left;
  }

#two {
      position:absolute;
      width:175px;
      height:60px;
      left:700px;
      top:400px;
      text-align:left;
  }

#three {
        position:absolute;
       }

#seven {
        color:white;
        font-size:10px;
        top:360px;
        left:771px;
        position:absolute;
}

#eight {
        color:white;
        font-size:10px;
        top:560px;
        left:771px;
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


h1 {
    color:white;
    text-align:center;
    }
    

    
</style>
</head>
<body> 
  <% session.invalidate(); %>


<script>
  document.firstElementChild.style.zoom = "reset";
  </script>
  <div class="container">
<div class="header">
<div id="h">BANK BANK<br><br></div><div id="tagline">...the bank you can bank upon</div></div></div>
  <div id="content">
<div id="one"><h2>Employee Login</h2>
<form action="EmployeeLogin" method="post">
Email_ID:<input type="text" name="emailid" required>

Password:<input type="password" name="password" required><br>
<input type="submit" value="submit">

</form></div>

<div id="two"><h2>Admin Login</h2>

<form action="AdminLogin" method="post" >
Email_ID:<input type="text" name="emailid" required>

Password:<input type="password" name="password" required>
<br>
<input type="submit" value="submit">

</form></div>

<div id="seven"><a href="securityquestion.html">Forgot password</a></div>

<div id="eight"><a href="securityquestion.html">Forgot password</a></div>

<div class="css-slideshow"> 
  <figure> 
    <img src="image/5.jpg" width="495" height="370" />  
  </figure> 
  <figure> 
    <img src="image/6.jpg" width="495" height="370" />  
  </figure>
 
  <figure> 
    <img src="image/7.jpg" width="495" height="370" /> 
  </figure> 
  <figure> 
    <img src="image/8.jpg" width="495" height="370" />  
  </figure></div>

<ul>
   <li><a href="HOME.jsp">HOME</a></li>
  <li><a href="Branches.jsp">BRANCHES</a></li>
  <li><a href="PrivacyPolicy.html">PRIVACY POLICY</a></li>
 <li><a href="feedback form.html">FEEDBACK</a></li>
  <li><a href="aboutUs.html">ABOUT US</a></li>
 <li><a href="contactUs.html">CONTACT US</a></li>
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

<div id="four"><p><h1>NEWS AND EVENTS</h1></p></div><br><br></div>
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div>

</body>
</html>
