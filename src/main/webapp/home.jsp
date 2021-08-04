<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Home Finder | Welcome</title>

<style type="text/css">

*{
font-family:arial;
}

body{
margin:0;
background-image:url(./images/house.jpg);
background-repeat: no-repeat;
background-size:cover;
min-width:900px;
}

.brand img {
float: left;
width: 90px;
height: 75px;
margin-top: 2.5px;
}

header h1 {
position: absolute;
margin-left:100%;
}

header{
background:rgba(255, 79, 79, 0.0);
height:35px;
border-bottom: 60px solid rgba(255, 79, 79, 0.9);
position:relative;
box-shadow: 2px 2px 5px rgb(73, 73, 73);
}

.search {
min-width:700px;
margin-right:20%;
margin-left:20%;
}

select{
margin-left:2%;
margin-right:2%;
margin-top:3%;
font-size: 19px;
border:0;
border-radius:4px;
box-shadow: 2px 2px 5px rgb(73, 73, 73);
opacity:0.95;
}

form{
margin-left:6%;
margin-right:4%;
}

.btn{
background:rgba(255, 79, 79, 0.9);
box-shadow: 2px 2px 5px rgb(73, 73, 73);
color:white;
margin:4% 0 0 40%;
border-radius:4px;
border:0;
font-size: 22px;
height:10%;
min-height:42px;
width:20%;
min-width:120px;
}

.search input[type=text] {
padding-left:40px;
border-radius: 5px;
border:0;
height:50px;
width:96%;
min-width:500px;
margin-top: 20%;
font-size: 21px;
box-shadow: 2px 2px 5px rgb(73, 73, 73);
opacity:0.95;
}

.brand{
color:white;
margin-left:10%;
margin-top:25px;
position:absolute;
}

nav{
margin-top:0;
margin-left:40%;
}

ul{
margin-top:0;
margin-left:35%;
padding-top:56px;
}

li{
display:inline;
font-size:18px;
margin-left:10%;
}

li a{
color:white;
text-decoration:none;
text-transform:uppercase;
}

li a:hover{
text-decoration: underline;
}

.search {
min-width:700px;
margin-right:20%;
margin-left:20%;
}

select{
margin-left:2%;
margin-right:1%;
margin-top:3%;
font-size: 19px;
border:0;
border-radius:4px;
box-shadow: 2px 2px 5px rgb(73, 73, 73);
opacity:0.95;
}

form{
margin-left:6%;
margin-right:4%;
}

.btn{
background:rgba(255, 79, 79, 0.9);
box-shadow: 2px 2px 5px rgb(73, 73, 73);
color:white;
margin:4% 0 0 40%;
border-radius:4px;
border:0;
font-size: 22px;
height:10%;
min-height:42px;
width:20%;
min-width:120px;
}

.search input[type=text] {
padding-left:40px;
border-radius: 5px;
border:0;
height:50px;
width:96%;
min-width:500px;
margin-top: 20%;
font-size: 21px;
box-shadow: 2px 2px 5px rgb(73, 73, 73);
opacity:0.95;
}

section{
background:rgba(0,0,0,0.6);
margin-top:-100px;
margin-bottom:-100px
}

.reference{
font-size: 20px;
text-align: center;
color: red;
}

.boxes{
min-height:340px;
margin-top:4%;
padding-left:15%;
position:relative;
}

.box1{
display:inline;
font-size:23px;
margin-left:18%;
position:absolute;
margin-top:6%;
}

.box2{
display:inline;
font-size:23px;
margin-left:40%;
position:absolute;
margin-top:6%;
}

.choice{
color:white;
border-width:3px;
text-decoration:none;
}

.recent{
background:rgb(234, 234, 234);
height:300px;
}

footer{
background:rgb(77, 89, 102);
min-height:150px;;
color:white;
box-shadow: -2px -1px 5px rgb(73, 73, 73);
padding:2% 0 2% 50px;
}

</style>

</head>

<body>
<header>

<div class="brand">
<img src="./images/logo.png">
<h1>HomeFinder</h1>
</div>

<nav>
<ul>
<strong>Welcome ... </strong>
<li id="about"><a href="about.html">About</a></li>
<li><a href="index.jsp">Logout</a></li>
</ul>
</nav>

</header>

<section>

<div class="box">
<div class="search">
<input type="text" placeholder="Search..">

<form method="POST" action='HomeContainer'>
  <select name="property_type">
	<option value="optionOne">Property Type</option>
    <option value="flats">Flats</option>
    <option value="houses">Houses</option>
  </select>
  <select name="area">
	<option value="optionOne">Area</option>
    <option value="mohakhali">Mohakhali</option>
    <option value="uttara">Uttara</option>
  </select>
   <select name="beds">
	<option value="optionOne">Bedrooms</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
  </select>
   <select name="bathrooms">
    <option value="optionOne">Bathrooms</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
  </select>
   <select name="price">
    <option value="optionOne">Price</option>
    <option value="8000">$8,000</option>
    <option value="10000">$10,000</option>
    <option value="12000">$12,000</option>
    <option value="15000">$15,000</option>
  </select>
  
    <button type="submit" class="btn" name="submit_button">Search</button><br><br><br>

</form>
  

</div> 
</div>

<div class="boxes">
<div class="box1">
<img src="./images/sell.png" height="72px">
<a class="choice" href="Sign_up.jsp"><br>Lease or sell <br> your property</a>
</div>

<div class="box2">
<img src="./images/find.png" height="75px">
<a class="choice" href="Sign_up.jsp"><br>Find nearby <br>apartments</a>
</div>
</div>

</section>

<div class="recent">
<h3>Recent Views</h3>
</div>

<footer>
<h4>Contact Us</h4>
<p>Email</p>
<p><br>Page Copyright &copy; 2018</p>
</footer>

</body>
</html>