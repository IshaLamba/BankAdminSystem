<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<style type="text/css">
#form {
	top:320px;
	text-align:right;
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
<div id="h">BANK<br><br></div><div id="tagline">...the name you can bank upon</div></div></div>
<div id="form">
<form action="show_transaction.jsp">
Account Number:<input type="text" name="account">
<input type="submit" value="submit">
</form></div>
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div></div>
</body>
</html>