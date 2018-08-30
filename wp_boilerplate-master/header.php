<!DOCTYPE html>
<html <?php language_attributes(); ?>>
	<head>
		<meta charset="<?php bloginfo('charset') ?>">
		<link rel="shortcut icon" href="icono.ico">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">	
		<?php get_template_part('_includes/iOS', 'icons') ?>
		<?php wp_head() ?>

	</head>
	<body>
		<nav class="navbar navbar-default navbar-fixed-top menuSup">
		<div class="container">
		  <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			  <span class="sr-only">Toggle navigation</span>
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/~feg7pablo/">
				<img src="<?php bloginfo('template_url')?>/assets/images/logo.png" class="logoSup" alt="logo">
				<h1>Working Holiday</h1>
			</a>
		  </div>
		  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">     
			<!--<ul class="nav navbar-nav navbar-right ">
			  <li><a href="#">Inicio</a></li>
			  <li><a href="nosotros.html">Nosotros</a></li>
			  <li><a href="noticias.html">Noticias</a></li>
			</ul>-->
				<?php if ( has_nav_menu( 'header-menu' ) ) { ?>
					<?php wp_nav_menu( array( 'theme_location' => 'header-menu', 'container' => null ) ); ?>
				<?php } ?>
		  </div>
		</div>
		</nav>

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="item active">
				  <div id="map" style="width: 100%; height: 600px; display: block;"></div>
				  <div class="carousel-caption d-none d-md-block">
					<h1>viaja - trabaja - vive!</h1>
					<h3>El Mundo esta a un paso</h3>
					</div>
				</div>
			</div>
		</div>
