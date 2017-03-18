<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>upload file</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<style>
#form {
	top:30%;
	text-align:left;
	font-size:25px;
       left:450px;
       position:absolute;
}
</style>
</head>
<body>
<div class="container">
<div class="header">
<div id="h">BANK BANK<br><br></div><div id="tagline">...the bank you can bank upon</div></div>
<div id="content">
<script>
  document.firstElementChild.style.zoom = "reset";
  </script>
<div id="form">
<h3>File Upload:</h3> 
Upload Identity Proof: <br /> 
<br>
<form action="uploadprocess.jsp" method="post" 
enctype="multipart/form-data"> 
<input type="file" name="file" size="50" /> 
<br /> 
<br>
<br>
<input type="submit" value="Upload File" /> 
</form> </div>
</div>
<div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div>
</div>

</body>
</html>