<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

h1{
text-align:center;
color:#00FFCC;
font-size:500%;
}
h5.a{
font-size:200;
color:blue;
text-align:left;
border: 10px solid transparent;
    padding: 15px;
    -webkit-border-image: url(images/border.jpeg) 30 round; /* Safari 3.1-5 */
    -o-border-image: url(images/border.jpeg) 30 round; /* Opera 11-12.1 */
    border-image: url(images/border.jpeg) 30 round;
}
h5.b{
font-size:200;
color:red;
text-align:right;
border: 10px solid transparent;
    padding: 15px;
    -webkit-border-image: url(images/border.jpeg) 30 round; /* Safari 3.1-5 */
    -o-border-image: url(images/border.jpeg) 30 round; /* Opera 11-12.1 */
    border-image: url(images/border.jpeg) 30 round;
}
img.a{
width: 100px;
height:100px;

}
text.h { 
    border: 10px solid transparent;
    padding: 15px;
    -webkit-border-image: url(images/border.jpeg) 30 round; /* Safari 3.1-5 */
    -o-border-image: url(images/border.jpeg) 30 round; /* Opera 11-12.1 */
    border-image: url(images/border.jpeg) 30 round;
}
#home {
top:10%;
left:90%;
position:absolute;
text-sixe:40px;
}

</style>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<link href="imgbubbles.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#orbs li{
width: 105px; /*width of image container. Should be wider than contained images (before bubbling) */
height:105px; /*height of image container. Should be taller than contained images (before bubbling) */
}
#orbs li img{
width: 100px; /*width of each image before bubbling*/
height: 100px; /*height of each image*/

}

</style>
<script type="text/javascript" src="imgbubbles.js">
</script>
<script type="text/javascript">
jQuery(document).ready(function($){
	$('ul#orbs').imgbubbles({factor:3,speed:700}) //add bubbles effect to UL id="orbs"
	
})
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Branches-Bank</title>
</head>
<body>
<div id="home"><a href="E profile.html">HOME</a></div>
<h1><b><i>BRANCHES</i></b></h1>
<table>
<tr>
<td><h5 class=a>
Anand Vihar Branch, Vikas Marg<br>
Karkar Duma, Karkardooma, <br>Anand Vihar<br>
New Delhi, Delhi 110092<br>
</h5><br></td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td><ul id="orbs" class="bubblewrap">
<li><a href="www.google.com"><img src="image/VikasMarg.png" alt="Vikas Marg" align="top"/></a></li>
</ul>
</td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td><ul id="orbs" class="bubblewrap">
<li><a href="www.google.com"><img src="image/yamunavihar.png" alt="Yamuna Vihar" align="top"/></a></li>
</ul>
</td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td><h5 class=b>
C1/14
Service Road
Block C,<br> Yamuna Vihar,
 <br>Shahdara<br>
New Delhi, Delhi 110053<br>
</h5><br></td>
</tr>
<tr><td>
<img class=a alt="" src="image/images.png" >
</td>
</tr>
<tr>
<td>
<h5 class=a>
Sapath 3, Near GNFG Tower<br>
Sarkhej - Gandhinagar Hwy<br>
Bodakdev<br>
Ahmedabad, Gujarat 380054<br>
</h5>
</td>

<td>
<img class=a alt="" src="image/images.png" >
</td>
<td><ul id="orbs" class="bubblewrap">
<li><a href="www.google.com"><img src="image/gujrat.png" alt="Ahemdabad" align="top"/></a></li>
</ul>
</td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td><ul id="orbs" class="bubblewrap">
<li><a href="www.google.com"><img src="images/anandvihar.png" alt="Anand Vihar" align="top"/></a></li>
</ul>
</td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td>
<h5 class=b>
Bhartendu Harish Chandra Marg<br>
Anand Vihar, DDA Flats,<br> Anand Vihar<br>
New Delhi, Delhi 110092<br>
</h5>
</td>
</tr>
<tr><td>
<img class=a alt="" src="image/images.png" >
</td>
</tr>
<tr>
<td>
<h5 class=a>
Guru Gobind Singh Marg<br>
Block E, Malviya Nagar<br>
New Delhi, Delhi 110017<br>
</h5>
</td>

<td>
<img class=a alt="" src="image/images.png" >
</td>
<td><ul id="orbs" class="bubblewrap">
<li><a href="www.google.com"><img src="image/malviya nagar.png" alt="Malviya Nagar" align="top"/></a></li>
</ul>
</td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td><ul id="orbs" class="bubblewrap">
<li><a href="www.google.com"><img src="image/saket.png" alt="Saket" align="top"/></a></li>
</ul>
</td>
<td>
<img class=a alt="" src="image/images.png" >
</td>
<td>
<h5 class=b>
Block M, Saket<br>
New Delhi, Delhi 110017<br>

</h5>
</td>
</tr>
</table>
</body>
</html>