<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="modele.User" %>
<!DOCTYPE html>
<html>
<head>
<title>NTIC Library</title>
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
<link href="web/css/iconeffects.css" rel='stylesheet' type='text/css' />
<link href="web/css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="web/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- dropdown -->
<script src="web/js/jquery.easydropdown.js"></script>
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
<!-- accordian -->
<link rel="stylesheet" href="web/css/jquery-ui.css">
	<script src="web/js/jquery-ui.js"></script>
	  <script>
		  $(function() {
			$( "#accordion" ).accordion();
		  });
	  </script>
<!-- //accordian -->
<!-- tabs -->
<script src="web/js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
			type: 'default', //Types: default, vertical, accordion           
			width: 'auto', //auto or any width like 600px
			fit: true   // 100% fit in a container
			});
		});				
	</script>
<!-- //tabs -->
<!--animate-->
<link href="web/css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="web/js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->

</head>
<body>

<div style="background-image: url(web/video/training.JPG)">

    <div class="center-container">
		<div class="ban-shade">
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
						 <li><a class="active" href="index.jsp">Home</a></li>
						 <li><a href="about.jsp">About</a></li>
												
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

            <div class="socials">
                <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4dd797b06396480a"></script>
            </div>

			<div class="box_1-top" align="center">
                <div class="banner-info wow fadeInLeft animated" data-wow-delay=".5s">
                <img src="web/images/logo-1.png" width="15%" height="15%">
					<h3>Education décent, carrière réussie</h3>
					<h2>Poursuivez vos objectifs avec notre bibliothèque d'experts</h2>
					
					<a class="scroll" href="#faculty" class="hvr-shutter-in-vertical button">Rencontrez Notre Faculté</a>
				</div>
			</div>
		</div>
    </div>
</div>

    <script>window.jQuery || document.write('<script src="web/js/vendor/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="web/js/jquery.vide.min.js"></script>

<!--banner bottom-->
<div class="about">
	<div class="col-md-6 about-left wow fadeInRight animated" data-wow-delay=".5s">
		<h3>Soyez-la bienvenue chez la bibliothèque des NTIC</h3>
		<p> La Bibliothèque vous accompagne et vous aide à réussir votre cursus universitaire en mettant à votre disposition ses collections , ses services, ses espaces de lecture et une équipe de bibliothécaires pour vous aider dans vos recherches , Elle vous offre également la possibilité d'exploiter ses services conçernant le prêt et la réservation de l'ensemble des catalogues existants au niveau de la bibliothèque NTIC. </p>
	</div>
	<div class="col-md-6 about-right wow fadeInLeft animated" data-wow-delay=".5s">
		<div class="hi-icon-wrap hi-icon-effect-4 hi-icon-effect-4b">
			<div class="abt-icon">
				<a class="hi-icon icon1"></a>
				<h4>Hard work</h4>
			</div>
			<div class="abt-icon">
				<a class="hi-icon icon2"></a>
				<h4>Knowledge</h4>
			</div>
			<div class="abt-icon">
				<a class="hi-icon icon3"></a>
				<h4>Success</h4>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="clearfix"></div>
</div>
<!--//banner bottom-->
<!--content-->
<div class="content">
	<div class="container">
		<h3>NTIC Library</h3>
		<div class="col-md-6 content-left wow fadeInLeft animated" data-wow-delay=".5s">
			<h4>Aperçu sur notre bibliothèque.</h4>
			<p style="color:white;"><b> La bibliothèque de la faculté des NTIC de l’université Abderrahmane Mehri de Constantine est située sur le nouveau campus de Lala Fatma Nssoumer. Elle rassemble les étudiants, enseignants, chercheurs et le personnel de la faculté des NTIC . Son fonds documentaire est composé d'un ensemble  : d’ouvrages, publications en séries (Revues), thèses, documents audio-visuels, dictionnaires et encyclopédies. Les enseignants et étudiants de la faculté sont les usagers essentiels de la bibliothèque. </b></p>
			<a href="about.jsp" class="hvr-shutter-in-vertical button">More about University</a>
		</div>
		<div class="col-md-6 content-right wow fadeInRight animated" data-wow-delay=".5s">
			<div class="con-left text-center">
				<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
				<h5>Apprentissage</h5>
				<p style="color:white;"><b>Une source d'information intéressante pour nos lecteurs </b></p>
			</div>
			<div class="con-left text-center">
				<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
				<h5>Compétitions</h5>
				<p style="color:white;"><b>Un moyen d'amélioration de niveau pour nos étudiants </b></p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--//content-->
<!--staff-->
<div class="rooms">
	<div class="container">
		<h3>Nos départements</h3>
		<div class="col-md-4 room-left wow fadeInRight animated" data-wow-delay=".5s">
			<div id="accordion">
				<h4>Département MI</h4>
				    <div class="faculty-list">
						<ul>
							
							<li><a href="">MI1</a></li>
							<li><a href="">MI2</a></li>
						</ul>
				    </div>
				<h4>Département TLSI</h4>
				    <div class="faculty-list">
						<ul class="resp-tabs-list">
							
							<li><a href="">GL</a></li>
							<li><a href="">SI</a></li>
						</ul>
				    </div>
				<h4>Département IFA</h4>
				    <div class="faculty-list">
						<ul class="resp-tabs-list">
							<li><a href="">TI</a></li>
							<li><a href="">SCI</a></li>
						</ul>
				    </div>
				
				</div>
		</div>
		
		<div class="col-md-8 room-right wow fadeInLeft animated" data-wow-delay=".5s">
			<div class="sap_tabs">
							<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
								  <ul class="resp-tabs-list">
									  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>MI</span></li>
									  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>TLSI</span></li>
									  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>IFA</span></li>
									  <div class="clearfix"></div>
								  </ul>				  	 
								<div class="resp-tabs-container">
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="tab_img">
											<h4>Présentation</h4>
											<p> L’objectif du Tronc Commun Mathématiques/Informatique (MI) est de donner une formation de base commune pour toutes les Branches (formation du 2e cycle) qui sont: Systèmes d’Information (SI),  Génie Logiciel (GL),  Technologies de l’Information (TI), et Sciences de l’Informatique (SCI) et ne prépare pas spécifiquement à l’une d’elles. Pour cette raison, il lui a été donné le nom de Tronc Commun. </p>
											<div class="fac-img">
												<img src="web/images/g9.jpg" alt=" "/>
											</div>
											<div class="fac-img">
												<img src="web/images/g1.jpg" alt=" "/>
											</div>
											<div class="fac-img">
												<img src="web/images/sem1.jpg" alt=" "/>
											</div>
											
											<div class="clearfix"></div>
										</div>								 
									</div>
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="tab_img">
											<div class="best-left">
												<h4>Présentation</h4>
												<p>Le département Technologies des Logiciels et des Systèmes d’Information (TLSI) recouvre deux parcours (Licence/Master). Hormis, les deux années tronc commun qui correspond au Mathématiques/Informatique (MI), nous avons deux types de licences, à savoir licence Génie Logiciel (GL), Systèmes d’Information et Technologies Web (SITW) et pour le master deux types aussi,   à savoir master Génie Logiciel (GL) et master Systèmes d’Information et Technologies Web (SITW) (recherche et professionnel ).</p>
												<div class="fac-img">
												<img src="web/images/f1.jpg" alt=" "/>
											</div>
											<div class="fac-img">
												<img src="web/images/a1.jpg" alt=" "/>
											</div>
																					
											</div>
											
										</div>	 	        					 
									</div>
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
										<div class="tab_img">
											<h4>Présentation</h4>
											<p> Le département d’Informatique Fondamentale et ses Applications (IFA) recouvre deux parcours (Licence/Master). Hormis, les deux années tronc commun qui correspond au Mathématiques/Informatique (MI), nous avons deux types de licences, à savoir licence Systèmes Informatiques (SI) et licence Sciences et Technologies de l’Information et de la Communication (STIC) et pour le master deux types aussi,   à savoir master Systèmes Distribués (SD) et master Sciences et Technologies de l’Information et de la Communication (recherche et professionnel ).</p>
											<div class="fac-img">
												<img src="web/images/g4.jpg" alt=" "/>
											</div>
											<div class="fac-img">
												<img src="web/images/sem2.jpg" alt=" "/>
											</div>
											<div class="clearfix"></div>
										</div>		        					 
									</div>
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
										<div class="tab_img">
											<div class="sem-right">
												<img src="web/images/sem2.jpg" alt=" " />
												<img src="web/images/sem3.jpg" alt=" " />
											</div>
											<div class="best-left sem-best">
												<h4>voluptatum Praesentium</h4>
												<ul>
													<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">Voluptatem accusantium </a></li>
													<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">Doloremque laudantium </a></li>
													<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">Molestiae consequatur </a></li>
													<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">Nostrum exercitat </a></li>
													<li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">Doloremque laudantium</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>		
									</div>
								</div>	
							</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--//staff-->
<!--footer-top-->
<div id="faculty" class="footer-top wow fadeInLeft animated" data-wow-delay=".5s">
	<div class="container">
		<img src="web/images/dpt.png" style="width:100%;">
		<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			
			<div id="myTabContent" class="tab-content">
				<div role="tabpanel" class="tabs-para tab-pane fade in active" id="home" aria-labelledby="home-tab">
					<h5><span class="quote1"></span>La faculté des Nouvelles Technologies de l’Information et de la Communication (NTIC) de l’Université Constantine 2 se compose de trois départements:
					<ul class="resp-tabs-list">
							
							<li>Département de Tronc Commun</li>
							<li>Département d’Informatique Fondamentale et ses Applications IFA</li>
							<li>Département de Technologies des Logiciels et des Systèmes d’Information TLSI</li>
						</ul>

<span class="quote2"></span></h5>
						<div class="team-right">
						<img src="web/images/ntic.jpg" width="100%" height="100%">
												
					</div>

					
					<div class="clearfix"></div>
				</div>
				
			</div>
		</div>
	</div>
</div>
<!--//footer-top-->
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
							<form action="http://localhost:8080/bibliotheque/controlleurlogin" method="post">
								<h3><span class="glyphicon glyphicon-log-in"></span>  Signin with your account </h3>
						 	                               
								<input type="text" value="Username" name ="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required="" id="usrname">	
									
								<input type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="" id="psw">	
								<h4><a href="">Forgot password</a> / <a href="inscription.jsp">Not a member ?</a></h4>
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