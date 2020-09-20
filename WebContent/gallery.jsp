<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="modele.User" %>
<!DOCTYPE html>
<html>
<head>
<title>Gallery Of NTIC Library</title>
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
<link href="web/css/hover_pack.css" rel='stylesheet' type='text/css' />
<link href="web/css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="web/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- dropdown -->
<script src="web/js/hover_pack.js"></script>
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
						 <li><a href="about.jsp">About</a></li>
												
						 </li>
						 <li><a href="inscription.jsp">Inscription</a></li>						 
						 <li><a class="active" href="gallery.jsp">Gallery</a>
							
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
<div class="gallery">
	<div class="container">
		<h3 class="tittle">Galerie des livres les mieux notés</h3>
			<div class="gallery-grids">
				
				<div class="gallery-grid wow fadeInRight animated" data-wow-delay=".5s">
					<a href="#portfolioModal7" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L1.jpg" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
					<a href="#portfolioModal1" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L2.jpg" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
					<a href="#portfolioModal2" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L3.png" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
				</div>
				<div class="gallery-grid wow fadeInUp animated" data-wow-delay=".5s">
					<a href="#portfolioModal3" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L4.jpg" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
					<a href="#portfolioModal4" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L5.jpg" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
					<a href="#portfolioModal8" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L6.jpg" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
					<a href="#portfolioModal10" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L7.jpg" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
				</div>
				<div class="gallery-grid wow fadeInLeft animated" data-wow-delay=".5s">
					<a href="#portfolioModal5" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L8.jpg" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
					<a href="#portfolioModal6" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L11.jpg" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
					<a href="#portfolioModal9" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
						  <img src="web/images/L9.jpg" alt=" " class="img-responsive" />
						  <div class="b-wrapper">
						  </div>
					</a>
				</div>
				<div class="clearfix"> </div>
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
							<form action="http://localhost:8080/bibliotheque/controlleurlogin" method="post">
								<h3><span class="glyphicon glyphicon-log-in"></span>  Signin with your account </h3>
						 	                               
								<input type="text" value="Username" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required="" id="usrname">	
									
								<input type="password" value="Password" name = "password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="" id="psw">	
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
<!-- gallery Modals -->
<div class="portfolio-modal modal fade slideanim" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <hr>
                        <img src="web/images/L2.jpg" class="img-responsive img-centered" alt="">
                        <p>Ce livre sur les réseaux informatiques s’adresse aux techniciens et ingénieurs en charge de l’exploitation d’un réseau informatique ou qui ont pour projet de déployer, de façon maîtrisée, une infrastructure de communication de données, de visioconférence ou de téléphonie sur IP.
Au fil des pages, le lecteur découvrira les enjeux et les intérêts d’une solution de supervision (surveillance, mesure de la charge dans les réseaux, optimisation des performances, appréhension des incidents et des pannes) et aussi d’une administration maîtrisée (sauvegarde et déploiement automatisés des configurations, mise à jour des systèmes d’exploitation) avec la présentation d’outils logiciels de la plate-forme CiscoWorks LMS de Cisco Systems, d’utilitaires et outils d’administration courants. Le lecteur trouvera en fin d’ouvrage un glossaire et une bibliographie, ainsi que la liste des outils utilisés, avec les références commerciales de leurs éditeurs, ou les sites Internet pour leur éventuel libre téléchargement. Une annexe technique est également proposée, détaillant les principales technologies abordées dans les différents chapitres.</p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <hr>
                        <img src="web/images/L3.png" class="img-responsive img-centered" alt="">
                        <p>Ce livre sur PHP et MySQL s'adresse aux concepteurs et développeurs qui souhaitent utiliser PHP et MySQL pour développer un site Web dynamique et interactif.

Dans la première partie du livre, l'auteur présente la mise en œuvre d'une base de données MySQL : langage SQL (Structured Query Language), utilisation des fonctions MySQL, construction d'une base de données (tables, index, vues), sans oublier les techniques avancées comme la recherche en texte intégral ou le développement de procédures stockées.

Dans la deuxième partie du livre, après une présentation des fonctionnalités de base du langage PHP, l'auteur se focalise sur les besoins spécifiques du développement de sites dynamiques et interactifs en s'attachant à apporter des réponses précises et complètes aux problématiques habituelles : gestion des formulaires, gestion des sessions, envoi de courriers électroniques et bien sûr accès à une base de données MySQL.

Abondamment illustré d'exemples commentés, ce livre (écrit sur les versions 5.5 de PHP et 5.6 de MySQL) est à la fois complet et synthétique et vous permet d'aller droit au but.

Des éléments complémentaires sont en téléchargement sur le site www.editions-eni.fr. </p>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <hr>
                        <img src="web/images/L4.jpg" class="img-responsive img-centered" alt="">
                        <p>Fondé sur les dernières distributions Linux Redhat, Fedora, Suse et Debian, ce livre vous permettra d'acquérir la pratique nécessaire à l'utilisation du système d'exploitation GNU/Linux. Régulièrement utilisé comme manuel d'exercices en formation professionnelle, il offre une approche progressive et pédagogique.

De la connexion à la programmation de scripts shells, vous vous exercerez notamment à l'exécution de commandes en ligne qui vous permettront de manipuler et organiser vos fichiers, de modifier votre environnement personnel, de gérer les processus, d'éditer des fichiers texte et de déterminer les droits d'accès associés à vos fichiers. 

Pour les apports théoriques sur ce sujet, Editions ENI édite, dans la collection Ressources Informatiques, le livre "Linux - Principes de base de l'utilisation du système", du même auteur.

46 QCM - 64 travaux pratiques et leurs corrigés - Près de 16 H de mise en pratique.</p>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <hr>
                        <img src="web/images/L5.jpg" class="img-responsive img-centered" alt="">
                        <p>Ce livre est destiné aux développeurs, même débutants, qui souhaitent connaître et maîtriser le développement d'applications Java sur Android 5 (en version 5.0.x - alias Lollipop – au moment de l'écriture). Sa lecture nécessite des connaissances basiques en programmation Java et XML mais aucun prérequis particulier sur Android.

Après une présentation de la plateforme Android et des principes de programmation qui lui sont spécifiques, vous apprendrez à installer et configurer l'environnement de développement (Android Studio et SDK Android). Vous évoluerez ensuite de façon progressive afin de connaître toutes les briques essentielles à la création d'applications Android. Ainsi, vous apprendrez à créer des interfaces de plus en plus complexes (layouts, ressources, ActionBar, listes, popups, webview, fragments, onglets, etc.), à gérer la navigation et la communication entre les différentes interfaces d'une application ou entre plusieurs applications et vous découvrirez les nouveautés de la version 5 d'Android </p>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <hr>
                        <img src="web/images/L8.jpg" class="img-responsive img-centered" alt="">
                        <p>Ce livre sur la configuration avancée des routeurs Cisco s’adresse à tous les techniciens, ingénieurs, concernés par l’administration des protocoles de routage sur des réseaux informatiques mettant en œuvre des routeurs CISCO. 
Après avoir resitué le contexte du routage, les notions de route, de métrique, de distance administrative, l’ouvrage inventorie les solutions possibles puis débute par la mise en œuvre du routage statique. RIP (Routing Information Protocol) est le premier protocole de routage dynamique étudié même s’il s’agit avant tout de justifier la migration vers des protocoles de routage plus sophistiqués. Les problèmes d’adressage sont également approfondis, l’ouvrage montre comment Internet a dû se résoudre à abandonner les classes d’adresses au profit de CIDR (Classless Interdomain Routing). 
Le lecteur est initié à l’usage des masques de longueur variable VLSM (Variable Length Subnet Mask) tant pour diviser que pour agréger des réseaux. Puis l’ouvrage dédie deux longs chapitres à la mise en œuvre des deux protocoles phares en matière de routage que sont EIGRP (Enhanced Interior Gateway Routing Protocol), protocole propriété de CISCO et OSPF (Open Shortest Path First), le protocole recommandé par l’IETF. L’articulation avec les procédés de commutation en couche 2 n’est pas oubliée, c’est ainsi que le mode de commutation CEF (Cisco Express Forwarding) et sa mise en œuvre sur les routeurs sont détaillés. 
L’ouvrage se veut pratique, une place importante est accordée à la réalisation d’ateliers dans des environnements émulés que le lecteur pourra reproduire sur son PC (fichiers disponibles en téléchargement sur www.editions-eni.fr.</p>
                   
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <hr>
                        <img src="web/images/L11.jpg" class="img-responsive img-centered" alt="">
                        <p>L’informatique prend enfin une place à part entière dans les programmes des Classes Préparatoires aux Grandes Écoles.
Ce cours couvre le programme des deux années de préparation qui est le même pour les filières : MPSI, PCSI, PTSI, TSI 1 et MP, PC, PSI, PTSI et TSI 2. Il est, pour l’essentiel, articulé autour de deux axes :
• l’informatique générale : algorithmique, preuves et complexité des programmes, représentation et traitement des données ;
• le calcul numérique où, tout en restant à un niveau très rudimentaire on peut montrer, dans des configurations simples, comment on résout les principaux problèmes issus des domaines scientifiques et techniques.
Conformément au programme, le support de ce cours est Python, langage de programmation simple d’utilisation rendu puissant grâce à sa bibliothèque très fournie.
Le calcul numérique est développé avec les modules numpy et scipy de Python ainsi qu’avec Scilab logiciel open source de calcul numérique.
Cet ouvrage contient plus d’une centaine d’exercices corrigés avec de nombreux compléments disponibles en ligne.</p>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal7" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <hr>
                        <img src="web/images/L1.jpg" class="img-responsive img-centered" alt="">
                        <p>L’informatique prend enfin une place à part entière dans les programmes des Classes Préparatoires aux Grandes Écoles.
Ce cours couvre le programme des deux années de préparation qui est le même pour les filières : MPSI, PCSI, PTSI, TSI 1 et MP, PC, PSI, PTSI et TSI 2. Il est, pour l’essentiel, articulé autour de deux axes :
• l’informatique générale : algorithmique, preuves et complexité des programmes, représentation et traitement des données ;
• le calcul numérique où, tout en restant à un niveau très rudimentaire on peut montrer, dans des configurations simples, comment on résout les principaux problèmes issus des domaines scientifiques et techniques.
Conformément au programme, le support de ce cours est Python, langage de programmation simple d’utilisation rendu puissant grâce à sa bibliothèque très fournie.
Le calcul numérique est développé avec les modules numpy et scipy de Python ainsi qu’avec Scilab logiciel open source de calcul numérique.
Cet ouvrage contient plus d’une centaine d’exercices corrigés avec de nombreux compléments disponibles en ligne.</p>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal8" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                       	<hr>
                        <img src="web/images/L6.jpg" class="img-responsive img-centered" alt="">
                        <p>Ce livre s'adresse aux DSI, chefs de projets, maîtres d'ouvrage, architectes, administrateurs ou développeurs ; il peut également intéresser les étudiants en informatique ou toute personne impliquée dans un projet logiciel exigeant. Tout au long du livre, l'auteur propose une approche didactique et accessible qui permet de donner au lecteur une vision claire de la dimension architecturale des systèmes informatiques.

Le livre révèle les liens tissés par les disciplines afférentes à la réalisation d'un projet logiciel d'envergure, agile et réactif. Il permet au lecteur de comprendre comment bâtir un système qui soit à la fois capable de répondre aux besoins du client, de réaliser les objectifs métiers de l'entreprise, tout en optimisant sa production, en facilitant sa maintenance, en s'intégrant aux infrastructures existantes, en rationalisant les coûts et en anticipant sa montée en charge.

Le lecteur progresse du niveau fonctionnel jusqu'à la technique pure. Il commence par appréhender les processus de développement les plus répandus, qu'ils soient agiles ou formels. Il découvre ensuite les techniques de recueil des exigences et d'élaboration des cas d'utilisation. Il aboutit enfin aux différents concepts d'architectures multi-tiers, distribuées, orientées services/messages et mobiles avant d'approfondir les tests automatisés, la modélisation, la conception orientée objet, la programmation fonctionnelle et les design patterns en passant par les bases de données NoSQL. 

Cette deuxième édition s'enrichit de trois nouveaux chapitres couvrant les briques fondamentales du Big Data, tant au niveau des modes de stockage distribués que des techniques de traitements massivement parallèles, les principes de λ-Architecture et le design d'applications réactives grâce à la programmation fonctionnelle.</p>
                     
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal9" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <hr>
                        <img src="web/images/L9.jpg" class="img-responsive img-centered" alt="">
                        <p>Véritable guide d'apprentissage, ce livre accompagne le lecteur dans le développement d'applications Android pour Smartphones et Tablettes tactiles. Il s'adresse aux développeurs disposant d'un minimum de connaissances sur la programmation orientée objet, le langage Java et les environnements de développement intégrés type Eclipse ou Android Studio et couvre toutes les versions d'Android jusqu'à la 4.4 incluse.

Le livre présente l'intégralité du processus de création d'applications, de la mise en place de l'environnement de développement jusqu'à la publication de l'application, et décrit une large sélection de fonctionnalités proposées par le système Android.

Vous découvrirez dans un premier temps la plate-forme Android, vous installerez l'environnement de développement et vous créerez sans attendre votre première application Android. Vous étudierez ensuite comment se construit l'interface utilisateur et prendrez connaissance des composants applicatifs fondamentaux. Vous apprendrez à développer des interfaces complexes qui s'adaptent aux écrans des tablettes et smartphones et à construire vos propres composants réutilisables. Puis, seront présentées la persistance des données, la programmation concurrente, la sécurité et la communication réseau. Un chapitre vous expliquera comment intégrer les réseaux sociaux dans vos applications.</p>
                   
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal10" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <hr>
                        <img src="web/images/L7.jpg" class="img-responsive img-centered" alt="">
                        <p>Dans cet ouvrage, Claude Delannoy applique au langage Java la démarche pédagogique qui a fait le succès de ses livres sur le C et le C++. Il insiste tout particulièrement sur la bonne compréhension des concepts objet et sur l'acquisition de méthodes de programmation rigoureuses.

L'apprentissage du langage se fait en quatre étapes : apprentissage de la syntaxe de base, maîtrise de la programmation objet en Java, initiation à la programmation graphique et événementielle avec la bibliothèque Swing, introduction au développement Web avec les servlets Java, les JSP et JDBC.</p>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //gallery Modals -->
</body>
</html>