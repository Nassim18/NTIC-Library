<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="modele.User" %>
<!DOCTYPE html>
<html>
<head>
<title>About NTIC Library</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Eduma Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="web/css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<link href="web/css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="web/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- dropdown -->

<!-- //dropdown -->
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="web/js/move-top.js"></script>
<script type="text/javascript" src="web/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!--animate-->
<link href="web/css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="web/js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->

</head>
<body>
<!-- page-head -->
    <div class="page-head">
			<div class="header-nav">
				<div class="logo wow fadeInUp animated" data-wow-delay=".5s">
					<h1>
						<a class="link link--kumya" href="index.jsp"><i></i><span data-letters="NTIC Library">NTIC Library</span></a>
						</h1>
				</div>
				<div class="top-nav wow fadeInUp animated" data-wow-delay=".5s">										 
						<label class="mobile_menu" for="mobile_menu">
						<span>Menu</span>
						</label>
						<input id="mobile_menu" type="checkbox">
					   <ul class="nav">
						 <li><a href="index.jsp">Home</a></li>
						 <li><a class="active" href="about.jsp">About</a></li>
												
						 </li>
						 <li><a href="inscription.jsp">Inscription</a></li>						 
						 <li><a href="gallery.jsp">Gallery</a>
							
						 </li>
						 <li><a href="contact.jsp">Find us</a></li> 
						 <li><a href="#" data-toggle="modal" data-target="#myModal2">Search</a></li>
						 <li><a href="#" data-toggle="modal" data-target="#myModal" style="border-color: white; border-width: 1px;"><% if (session.getAttribute("currentSessionUser") == null){ %>Login <% } else { User user = (User)session.getAttribute("currentSessionUser"); out.print(user.getUsername()); } %></a></li>
					  </ul>
				 </div>
				<div class="clearfix"></div>
			</div>
    </div>
<!-- //page-head -->
<!-- about -->
<div class="about-page">
<h3 class="tittle">ABOUT</h3>
<div class="col-md-12">
		<img src="web/images/uc.jpg" style="width:100%;">
	</div>
	<div class="container">
		
			<div class="about-grids">
				
				<div class="col-sm-8 about-grid wow fadeInLeft animated" data-wow-delay=".5s">
				<br>
					<h4>Un mot sur l'université</h4>
					<div class="about-gd">
						
						<div class="about-gd-right">
							<p><b>L’Université Constantine 2 </b> a été créée par décret exécutif n° 11-401 du 28 novembre 2011.  Ce document présente la structure et les domaines de compétences de l’Université de Constantine 2.
Il définit l’organisation de l’Université Constantine 2, il décrit également les différentes formations du 1er, 2ème et 3ème cycle assurées par l’université ainsi que les laboratoires de recherche, les projets et les programmes de recherche domicilié à l’Université Constantine 2. 
Il présent enfin en chiffres le potentiel de l’université en terme d’enseignants chercheurs, de formations assurées et d’étudiants inscrits.
L’Université Constantine 2 a été dénommée « Université Abdelhamid Mehri – Constantine » (Nom du Moudjahid Abdelhamid Mehri) conformément à la décision n ° 01/14 du 29 Dhou-al-Hijah, correspondante au 23 Octobre 2014 délivrée par le ministère de moudjahidin, portant dénomination des institutions universitaires.</p>
						</div>
					
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	</div>
</div>

<!--footer-->
<div class="footer">
	<div class="container">
		<div class="col-md-3 footer-grid wow fadeInRight animated" data-wow-delay=".5s">
			<h3>About us</h3>
			<p>Pour plus d'informations veuillez contacter le webmaster.</p>
		</div>
		<div class="col-md-2 footer-grid wow fadeInRight animated" data-wow-delay=".5s">
			<h3>Navigation</h3>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="inscription.jsp">Inscription</a></li>						 
				<li><a href="gallery.jsp">Gallery</a></li> 
				<li><a href="contact.jsp">Find us</a></li>
			</ul>
		</div>
		<div class="col-md-3 footer-grid wow fadeInLeft animated" data-wow-delay=".5s">
			<h3>Get in Touch</h3>
			<h2>Faculté NTIC</h2>
			<ul>
				<li>+213 (0) 31-78-31-69</li>
				<li>Université Constantine 2 - Abdelhamid Mehri </li>
				<li>Ali Mendjeli - BP : 67A,</li>
				<li>Constantine</li>
				<li>Email : <a href="mailto:facntic@univ-constantine2.dz">facntic@univ-constantine2.dz</a></li>
			</ul>
		</div>
		<div class="col-md-4 social-grid wow fadeInLeft animated" data-wow-delay=".5s">
			<h3>Connect online</h3>
			<ul>
				<!-- <li><a class="fb1" href="https://www.facebook.com/faculteNTICUC2" title="Page Facebook"></a></li>
				<li><a class="fb2" href="https://twitter.com/fac_ntic_UC2" title="Page Twiter"></a></li>
				<li><a class="fb3" href="#"></a></li>
				<li><a class="fb4" href="#"></a></li> -->
				<li><img src="web/images/soc_1.png"></li>
				<li><img src="web/images/soc_2.png"></li>
				<li><img src="web/images/soc_3.png"></li>
				<li><img src="web/images/soc_4.png"></li>
				<li><img src="web/images/soc_5.png"></li>
				
			</ul>
			<form>
					<input type="email" value="Enter your email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email';}" required="">
					<input type="submit" value=" ">
			</form>
		</div>
		<div class="clearfix"></div>
		<div class="copy-right">
			<p> &copy; Copyright 2016 - Université Abdelhamid Mehri - Constantine . Tous droits résérvés </p>
		</div>
	</div>
</div>
<!-- //footer-->
<!-- Modal -->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  </div>
		  <div class="modal-body modal-spa">
								<div class="login-grids">
					<div class="login">
					  <div class="login-left">

					  <img src="web/images/user.png" width="250px" height="250px">

					  </div>
						
						<div class="login-right">
							<form action="http://localhost:8080/bibliotheque/contolleurlogin" method="post">
								<h3><span class="glyphicon glyphicon-log-in"></span>  Signin with your account </h3>
						 	                               
								<input type="text" value="Username" name = "username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required="" id="usrname">	
									
								<input type="password" value="Password" name= "password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="" id="psw">	
								<h4><a href="">Forgot password</a> / <a href="">Not a member ?</a></h4>
								<div class="single-bottom">
									<input type="checkbox"  id="brand" value="">
									<label for="brand"><span></span>Remember Me.</label>
								</div>
								<input type="submit" value="SIGNIN" >
												
							</form>
						</div>
						<div class="clearfix"></div>								
									</div>
									<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
								</div>
		  </div>

		</div>
	  </div>
	</div>
<!-- Modal Search -->

	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-search"></span> Search</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-search"></span> Critères de recherche</label>
              <input type="text" class="form-control" onfocus="this.value = '';" id="critere" placeholder="Search for...">
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-search"></span> GO !</button>
          </form>
        </div>
        
      </div>
      
    </div>
  </div> 
	  </div>
	</div>
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="web/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>