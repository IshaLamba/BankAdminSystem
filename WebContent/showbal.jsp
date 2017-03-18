<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>show balance</title>
<link rel="stylesheet" type="text/css" href="ex1.css"/>
<style type="text/css">

#table {
top:45%;
position:absolute;
left:15%;
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
</style>
</head>
<body>
<script>
  document.firstElementChild.style.zoom = "reset";
  </script>
<div class="container"></div>
<div class="header">
<div id="h">BANK BANK<br><br></div><div id="tagline">...the bank you can bank upon</div></div>
<div id="table">
  <table border="2" width="50%" align="center">
     <tr>
        <th>AccountNo</th>
        <th>CustomerName</th>
        <th>Balance(INR)</th>
     </tr>
     
     <%
       String acc=(String)request.getAttribute("acc");
        Double balance=(Double)request.getAttribute("balance");
      String name=(String)request.getAttribute("name");
      System.out.println(acc+"<br>"+balance+"<br>"+name+"<br>");
       
     %>
     
     <tr>
       <td>${acc}</td>
       <td>${name} </td>
        <td>${balance}</td>
       
     </tr>
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

 <div id="f"><div id="three"><marquee><span>CONTACT US</span> : For any queries or feedback , contact us at : <span>PHONE</span>:27389279 , <span>EMAIL</span>:abc@yahoo.com</marquee></div></div>
</div>
</body>
</html>