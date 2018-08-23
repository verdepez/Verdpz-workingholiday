<!DOCTYPE html>
<html <?php language_attributes(); ?>>
	<head>
		<meta charset="<?php bloginfo('charset') ?>">
		<link rel="shortcut icon" href="icono.ico">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
		<link rel="stylesheet" href="css/estail.css">	
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
			<a class="navbar-brand" href="index.html">
			  <img src="<?php bloginfo('template_url')?>/assets/images/logo.png" class="logoSup" alt="logo">
			</a>
			<h1>Working Holiday</h1>
		  </div>
		  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">     
			<ul class="nav navbar-nav navbar-right ">
			  <li><a href="#">Inicio</a></li>
			  <li><a href="nosotros.html">Nosotros</a></li>
			  <li><a href="noticias.html">Noticias</a></li>
			</ul>
		  </div>
		</div>
		</nav>
