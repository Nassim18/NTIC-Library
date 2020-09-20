<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="modele.User" %> 
<!DOCTYPE html>
<html>
<head>
<title>Traiter Demande Adhésion</title>
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
						 <li><a href="index.jsp" style="color:black;">Home</a></li>
						 <li><a href="about.jsp" style="color:black;">About</a></li>
												
						 </li>
						 <li><a href="inscription.jsp" style="color:black;">Inscription</a></li>						 
						 <li><a href="gallery.jsp" style="color:black;">Gallery</a>
							
						 </li>
						 <li><a href="contact.jsp" style="color:black;">Find us</a></li> 
						 <li><a href="#" data-toggle="modal" data-target="#myModal2" style="color:black;">Search</a></li>
						 <li><a href="#" data-toggle="modal" data-target="#myModal" style="border-color: white; border-width: 1px;" style="color:black;">Bibliothécaire</a></li>
						 
					  </ul>
				 </div>
				<div class="clearfix"></div>
</div>
</div>
<% User u = (User)session.getAttribute("currentSessionUser1");%>
<div class="rooms">
	<div class="col-md-12">
		<img src="web/images/dpt.png" style="width:100%;">
	</div>
	<div class="container">
		<h3 style="margin-top: 300px;">Traitement d'adhésion</h3>
		<form class="col-md-6 col-md-offset-3" action="http://localhost:8080/bibliotheque/controlleurtraiteradhesiond" method="post">
	        	  <div class="form-group">
				    <label for="name">Username</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
				      <input type="text" class="form-control" name="username" placeholder="Username" value=<%=u.getUsername()%>>
				    </div>
				  </div>

				  <div class="form-group">
				    <label for="pname">Password</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-eye-open"></span></div>
				      <input type="text" class="form-control" name="password"  placeholder="Password" value= <%=u.getPassword()%>>
				    </div>
				  </div>

				  <div class="form-group">
				    <label for="studentCard">Nom</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-info-sign"></span></div>
				      <input type="text" class="form-control" name="nom" placeholder="Nom"value= <%=u.getNom()%>>
				    </div>
				  </div>

	        	  <div class="form-group">
				    <label for="adresse">Prénom</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-info-sign"></span></div>
				      <input type="text" class="form-control" name="prenom" placeholder="Prénom"value= <%=u.getPrenom()%>>
				    </div>
				  </div>


	        	  <div class="form-group">
				    <label for="email">Adresse</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-home"></span></div>
				      <input type="text" class="form-control" name="adresse" placeholder="Adresse"value= <%=u.getAdresse()%>>
				    </div>
				  </div>

				  <div class="form-group">
				    <label for="password">Etat</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-warning-sign"></span></div>
				      <input type="text" class="form-control" name="etat" placeholder="Etat"value= <%=u.getEtat()%>>
				    </div>
				  </div>

				  <div class="form-group">
				    <label for="passwordConfirm">Numero de carte professionnelle</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-credit-card"></span></div>
				      <input type="text" class="form-control" name="numcarte" placeholder="Numero de carte professionnelle"value= <%=u.getNumcarte()%>>
				    </div>
				  </div>
				  
				  <div class="form-group">
				    <label for="password">Type</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-tags"></span></div>
				      <input type="text" class="form-control" name="type" placeholder="Type"value= <%=u.getType()%>>
				    </div>
				  </div>
				  <div class="form-group">
			        <input type="reset" class="btn btn-danger" value="Reset"/>
			        <button type="submit" class="btn btn-success">Modifier</button>
			      </div>
	        </form>
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