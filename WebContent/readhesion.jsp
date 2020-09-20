<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Demande de r�-adh�sion</title>
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
						<a class="link link--kumya" href="index.html"><i></i><span data-letters="NTIC Library">NTIC Library</span></a>
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
						 
					  </ul>
				 </div>
				<div class="clearfix"></div>
</div>
</div>
<div class="rooms">
	<div class="col-md-12">
		<img src="web/images/dpt.png" style="width:100%;">
	</div>
	<div class="container">
		<h3 style="margin-top: 300px;">Formulaire de R�-adh�sion </h3>
		<form class="col-md-6 col-md-offset-3" action="http://localhost:8080/bibliotheque/controlleurdemandereadhesion" method="post">
	        	  <div class="form-group">
				    <label for="name">Niveau</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-briefcase"></span></div>
				      <input type="text" class="form-control" name="niveau" placeholder="Niveau">
				    </div>
				  </div>

				  <div class="form-group">
				    <label for="pname">Specialit�</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-bookmark"></span></div>
				      <input type="text" class="form-control" name="specialite" placeholder="Sp�cialit�">
				    </div>
				  </div>

				  <div class="form-group">
				    <label for="studentCard">N�carte d'adh�sion</label>
				    <div class="input-group">
				      <div class="input-group-addon"><span class="glyphicon glyphicon-credit-card"></span></div>
				      <input type="text" class="form-control" name="num_ca" placeholder="Num de carte d'adh�sion">
				    </div>
				  </div>

	        	 
				  <div class="form-group">
			        <input type="reset" class="btn btn-danger" value="Reset"/>
			        <button type="submit" class="btn btn-success">Valider</button>
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
          <div class="row">
          <div class="form-group">
    	<label for="usrname"><span class="glyphicon glyphicon-check"></span> Veuillez choisir votre type de crit�re</label>
	</div>
    <div class="row">
        
	</div>
	<div class="row">
      <div class="col-lg-12">
        <div class="input-group">
          <span class="input-group-addon">
            <input type="checkbox">
          </span>
          <select type="text" class="form-control">
              <option>Auteur</option>
              <option>Titre</option>
              <option>Sp�cialit�</option>
              <option>Cat�gorie</option>
          </select>
        </div><!-- /input-group -->
      </div><!-- /.col-lg-12 -->
      </div><!-- /.form-group -->
    </div><!-- /.row -->
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-edit"></span> Veuillez saisir votre crit�re de recherche</label>
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