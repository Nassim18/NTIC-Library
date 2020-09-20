<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="modele.document" %>
    <%@page import="modele.recherche" %>
    <%@page import=" java.util.ArrayList"%>
      <%@page import=" java.util.Iterator"%>
<!DOCTYPE html>
<html>
<head>
<title>Recherche</title>
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
<% ArrayList<document> a =(ArrayList)(session.getAttribute("listedocument")); %>
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
						 <li><a href="about.jsp">About</a></li>
												
						 </li>
						 <li><a class="active" href="inscription.jsp">Inscription</a></li>						 
						 <li><a href="gallery.jsp">Gallery</a>
							
						 </li>
						 <li><a href="contact.jsp">Find us</a></li> 
						 <li><a href="#" data-toggle="modal" data-target="#myModal2">Search</a></li>
						 
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
		<h3 style="margin-top: 300px;">R�sultats de la recherche </h3>
		<p> <% Iterator  <document> i =a.iterator();
		while (i.hasNext()){
			document d = new document();
				d=i.next();%>
				<pre>
				<h4><label>cote document      :</label>		<%out.println(d.getCote());%> </h4>
				<h4><label>titre document     :</label> 		<%out.println(d.getTitre());%></h4>
				<h4><label>auteur document    :</label>		<%out.println(d.getAuteur());%></h4>
			 	<h4><label>�dition document   :</label>		<%out.println(d.getEdition());%></h4>
				<h4><label>sp�cialit� document:</label>		<%out.println(d.getSpecialite());%></h4>
				<h4><label>cat�gorie document :</label>		<%out.println(d.getCategorie());%>  </h4>
			<center>	<%out.println("----------------------------------------------------------------");%> </center>
				<%out.println("\n");}%>
		</pre>
		</p>
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