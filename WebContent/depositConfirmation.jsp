<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Deposit Confirmation</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<link rel="stylesheet" type="text/css" href="ss.css"/>
<style type="text/css">
#form {
	top:350px;
	text-align:left;
	font-size:30px;
       left:450px;
       position:absolute;
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
<div id="form">
    <form action="deposit" method="post" >
      Confirm Password:<br>
<br>
      <input type="password" name="password" /> <br>
<br>
      <input type="submit" value="Confirm" />
      </form>
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div>
</div>
 
</body>
</html>