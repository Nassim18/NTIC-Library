<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="modele.User" %>
<!DOCTYPE html>
<html>
<head>
<title>Espace Bibliothèque</title>
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
 <!-- Bootstrap Core CSS -->
    <link href="web/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="web/css/simple-sidebar.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="web/css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<link href="web/css/iconeffects.css" rel='stylesheet' type='text/css' />
<link href="web/css/style1.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Open+Sans&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
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
<script type="text/javascript">
	$(document).ready(function(){
$(".panelToggle").click(function(){
    $(".userPanel").toggleClass("width200px width45px");
	$("i",this).toggleClass("fa-arrow-left fa-arrow-right");
	$(".userLogo img").toggleClass("width50p width90p");
	$(".userNameSpan").toggleClass("show hide");
	$(".userMenu span").toggleClass("show hide");
	$(".userMenu ul").toggleClass("showI2");
	$(".userMenu ul i").toggleClass("Icon Icon2");
});
});
</script>
<script type="text/javascript">
	    function htmlbodyHeightUpdate(){
		var height3 = $( window ).height()
		var height1 = $('.nav').height()+50
		height2 = $('.main').height()
		if(height2 > height3){
			$('html').height(Math.max(height1,height3,height2)+10);
			$('body').height(Math.max(height1,height3,height2)+10);
		}
		else
		{
			$('html').height(Math.max(height1,height3,height2));
			$('body').height(Math.max(height1,height3,height2));
		}
		
	}
	$(document).ready(function () {
		htmlbodyHeightUpdate()
		$( window ).resize(function() {
			htmlbodyHeightUpdate()
		});
		$( window ).scroll(function() {
			height2 = $('.main').height()
  			htmlbodyHeightUpdate()
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
	<script type="text/javascript">
	$("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
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
<%User user =(User)(session.getAttribute("currentSessionUser")); %>
<div style="background-image: url(web/video/training.jpg)">

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
						 <li><a href="index.jsp">Home</a></li>
						 <li><a href="about.jsp">About</a></li>
												
						 </li>
						 <li><a href="inscription.jsp">Inscription</a></li>						 
						 <li><a href="gallery.jsp">Gallery</a>
							
						 </li>
						 <li><a href="contact.html">Find us</a></li> 
						 <li><a href="#" data-toggle="modal" data-target="#myModal2">Search</a></li>
						 <li><a href="#" data-toggle="modal" data-target="#myModal" style="border-color: white; border-width: 1px;"><% if (session.getAttribute("currentSessionUser") == null){ %>Login <% } else {  out.print(user.getUsername()); } %></a></li>
					  </ul>
				 </div>
				<div class="clearfix"></div>
			</div>
			<div class="content2">
	<div class="container">
          <div class="row">
          
            <div class="col-sm-4 col-md-4">
                
                <div class="nav-side-menu">
                    <div class="brand">Fonctionalitées</div>
                    <i aria-expanded="true" data-target="#menu-content" data-toggle="collapse" class="fa fa-bars fa-2x toggle-btn"></i>
                  
                        <div class="menu-list">
                  
                            <ul class="menu-content collapse in" id="menu-content">
                                
                
                                <li class="collapsed active" data-target="#new" data-toggle="collapse">
                                  <a href="#"><i class=""><img src="web/images/fa-user1.png" alt=""></i> <strong>Profil</strong></a>
                                </li>
                                
                                
                                
                                
                                  <li class="collapsed" data-target="#service" data-toggle="collapse">
                                  <a href="#"><i class=""><img src="web/images/fa-user2.png" alt=""></i> <strong>Gestion des documents </strong> <span class="arrow"></span></a>
                                </li>
                                
                                <ul id="service" class="sub-menu collapse">
                                    <li><a href="ajouterdoc.jsp">Ajouter un document</a></li>
                                    <li><a href="modifier.jsp">Modifier un document</a></li>
                                    <li><a href="supprimerdoc.jsp">Supprimer un document</a></li>
                                    <li><a href="ajoutercopie.jsp">Ajouter une copie document</a></li>
                                                                        
                                </ul>

                                <li class="collapsed" data-target="#products" data-toggle="collapse">
                                  <a href="#"><i class=""><img src="web/images/fa-user2.png" alt=""></i> <strong>Gestion de prêt des documents </strong><span class="arrow"></span></a>
                                  </li>
                                   <ul id="products" class="sub-menu collapse">
                                   <li><a href="preter.jsp">Prêter document</a></li>
                                                                                                                                                                       
                                    
                                </ul>
                                

                                <li class="collapsed" data-target="#products1" data-toggle="collapse">
                                  <a href="#"><i class=""><img src="web/images/fa-user2.png" alt=""></i> <strong>Gestion de réservations des documents </strong><span class="arrow"></span></a>
                                  </li>
                                   <ul id="products1" class="sub-menu collapse">
                                   <li><a href="reserver.jsp">Réserver document</a></li>
                                   </ul>
                                
                                <li class="collapsed" data-target="#new" data-toggle="collapse">
                                  <a href="#"><i class=""><img src="web/images/fa-user3.png" alt=""></i> <strong>Elaborer bilan statistique </strong>  <span class="glyphicon glyphicon-chevron-right"></span></a>
                                </li>
                
                
                                 <li class="collapsed" data-target="#new" data-toggle="collapse">
                                  <a href="#"><i class=""><img src="web/images/fa-user3.png" alt=""></i> <strong>Traiter demande quitus </strong>  <span class="glyphicon glyphicon-chevron-right"></span></a>
                                  </li>


                                  <li class="collapsed" data-target="#new" data-toggle="collapse">
                                  <a href="#"><i class=""><img src="web/images/fa-user3.png" alt=""></i> <strong>Retourner document </strong>  <span class="glyphicon glyphicon-chevron-right"></span></a>
                                </li>
                               
                            </ul>
                     </div>
                </div>
                
            </div>
            
             <!-- left menu end -->
            
            
            
          </div>
        </div>		
</div>
	<!-- Modal Profile -->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3><span class="glyphicon glyphicon-education"></span>  Soyez La bienvenue cher Bibliothécaire</h3>
        </div>
        <div class="modal-body modal-spa">
				<div class="login-grids">
					<div class="login">
					  <div class="login-left">

					  <img src="web/images/user.png" width="200px" height="190px">

					  </div>
						
						<div class="login-right1">
							<form>
								<h3 style=""><span class="glyphicon glyphicon-pushpin"></span>  ID bibliothécaire :<%=user.getNumcarte() %> </h3>
						   	   <p>
                            <h3 style=""><span class="glyphicon glyphicon-user"></span>  Username :<%=user.getNumcarte() %> </h3>
                            <br />
                            <h3 style=""><span class="glyphicon glyphicon-info-sign"></span>  Nom : <%=user.getNumcarte() %></h3>
                            <br />
                            <h3 style=""><span class="glyphicon glyphicon-info-sign"></span>  Prénom :  <%=user.getNumcarte() %> </h3>
                               </p>	
                               <form>
                            <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Déconnexion </button>
							   </form>																		
							</form>
						</div>
						<div class="clearfix"></div>								
					</div>
					
				</div>
		  </div>
        
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
          <div class="row">
          <div class="form-group">
    	<label for="usrname"><span class="glyphicon glyphicon-check"></span> Veuillez choisir votre type de critère</label>
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
              <option>Spécialité</option>
              <option>Catégorie</option>
          </select>
        </div><!-- /input-group -->
      </div><!-- /.col-lg-12 -->
      </div><!-- /.form-group -->
    </div><!-- /.row -->
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-edit"></span> Veuillez saisir votre critère de recherche</label>
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
  <!-- Modal Supprimer Document -->

	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="
glyphicon glyphicon-trash"></span> Veuillez introduire la cote du document à supprimer</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-barcode"></span> La Cote</label>
              <input type="text" class="form-control" onfocus="this.value = '';" name="cote" placeholder="La cote du document..">
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-check"></span> Valider </button>
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
		<script type="text/javascript">
		    function htmlbodyHeightUpdate(){
		var height3 = $( window ).height()
		var height1 = $('.nav').height()+50
		height2 = $('.main').height()
		if(height2 > height3){
			$('html').height(Math.max(height1,height3,height2)+10);
			$('body').height(Math.max(height1,height3,height2)+10);
		}
		else
		{
			$('html').height(Math.max(height1,height3,height2));
			$('body').height(Math.max(height1,height3,height2));
		}
		
	}
	$(document).ready(function () {
		htmlbodyHeightUpdate()
		$( window ).resize(function() {
			htmlbodyHeightUpdate()
		});
		$( window ).scroll(function() {
			height2 = $('.main').height()
  			htmlbodyHeightUpdate()
		});
	});</script>
<!-- //for bootstrap working -->
</body>
</html>