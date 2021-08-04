<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />

  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>Test page for homefinder</title>
</head>
<style>
body{
margin:0;
background-image:url(./images/bg.jpg);
background-repeat: no-repeat;
background-size:cover;
min-width:900px;
}
/*styling of image slider start*/
.text1{
font-family: Comic Sans MS;
font-size: 35px;
color: white;
text-align: center;
}
.slider { 
min-height: 600px;
}
.slides { 
min-height: 600px;
}
.slide_image{
min-height: 575px;
color: red;
}
</style>
<body>
<div>
	  <nav class="red lighten-1">
		<div class="nav-wrapper">
		  <div class="container">
			<div class="row">
				<div class="col s1">
					<img src="img/logo.png" alt="" class="responsive-img left">
				</div>
			
				<h4 class="brand-logo"><strong>HomeFinder</strong></h4>
				<a class="button-collapse" data-activates="mobile-nav" href="#">
					<i class="material-icons">menu</i>
				</a>
				<ul id="nav-mobile" class="right hide-on-small-and-down">
				  <li>
					<a href="index.jsp" class="waves-effect waves-dark">HOME</a>
				  </li>
				  <li>
					<a href="#" class="waves-effect waves-dark">ABOUT</a>
				  </li>
				  <li>
					<a href="#" class="waves-effect waves-dark">CONTACT</a>
				  </li>
				  <li>
					<a href="login.jsp">
						<i class="material-icons">person</i>
					</a>
				  </li>
				</ul>
				<ul class="side-nav" id="mobile-nav">
					<li>
						<a href="#">Home</a>
					</li>
					<li>
						<a href="#">About</a>
					</li>
					<li>
						<a href="#">Contact</a>
					</li>
					<li>
					<a href="#">
						<i class="material-icons">person</i>
					</a>
				  </li>
				</ul>
			</div>
		  </div>
		</div>
	  </nav>
	  <div>
		<blockquote class="text1">Check out the results and find out if this home is for you.</blockquote>
	  </div>
	  
	  <br>
	  <br>
	  
	  <div class="slider">
		<ul class="slides">
		  <li class="slide_image">
			<img src="images/bedroom1.jpg"> <!-- random image -->
			<div class="caption center-align">
			  <h3 class="black-text">The luxurious bedroom</h3>
			  <h5 class="light black-text text-lighten-3">Here's to starting fresh.</h5>
			</div>
		  </li>
		  <li class="slide_image">
			<img src="images/bathroom2.jpg"> <!-- random image -->
			<div class="caption left-align">
			  <h3 class="black-text">The Fancy bathroom</h3>
			  <h5 class="light black-text text-lighten-3">Brought to you by HomeFinder.</h5>
			</div>
		  </li>
		  <li class="slide_image">
			<img src="images/living room1.jpg"> <!-- random image -->
			<div class="caption right-align">
			  <h3 class="black-text text-lighten-3">The perfect living room</h3>
			  <h5 class="light black-text text-darken-4">A place to actually chill</h5>
			</div>
		  </li>
		  <li class="slide_image">
			<img src="images/Kitchen1.jpg"> <!-- random image -->
			<div class="caption center-align">
			  <h3 class="black-text">This is your kitchen</h3>
			  <h5 class="light black-text text-lighten-3">Just makes you wanna cook</h5>
			</div>
		  </li>
		</ul>
	  </div>
	  
	  <br>
	  
	  <form action="searchContainer" method="get" class="center-align">
		<button class="btn-large red waves-effect waves-light"><b>Rent Now</b></button>
	  </form>
      
  </div>

  <br>
  <br>

  
  <!-- END HERE -->

  <div style="margin-top:1000px;"></div>
  <footer class="page-footer grey darken-3">
		<div class="conntainer">
			<div class="row">
				<div class="col s12 m6">
					<h5 class="grey-text text-lighten-3">HomeFinder Co-operations</h5>
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quam magni aut mollitia quis? Ab voluptate quaerat libero
				voluptatibus quisquam in dolorum nobis hic. Suscipit dignissimos laboriosam id nesciunt debitis exercitationem.</p>
				</div>
				<div class="col s12 m4 offset-m2">
					<h5 class="grey-text text-lighten-3">Links</h5>
					<ul>
						<li>
							<a href="" class="white-text">
								<i class="material-icons">email</i>
							</a>
						</li>
						<li>
							<a href="" class="white-text">
								<i class="material-icons">find_in_page</i>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copyright grey darken-2">
			<div class="container">
				Copyright &copy; 2018
				<a href="" class="grey-text text-lighten-3">Terms and condition</a>
			</div>
		</div>
  </footer>

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/materialize.min.js"></script>

  <script>
    $(document).ready(function () {
      $('.dropdown-button').dropdown({
        constrainWidth: false,
        hover: true,
        belowOrigin: true,
        alignment: 'left'
      });

      // JAVASCRIPT START HERE //
	  
	  $('.button-collapse').sideNav();
	  
	  // init image slider
	  $(document).ready(function(){
		$('.slider').slider();
	  });


    });
  </script>
</body>
</html>