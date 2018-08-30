<?php get_header() ?>


	
		<div class="bac-gris container-fluid ">
		<div class="container">
			<h2>Noticias.</h2>
			<div class="row">
				<?php
					$project_a = array(
						'post_type'			=> 'paises_post_type',
						'post_per_page'		=> 1
					);
					$get_project_a = new WP_Query( $project_a );
					


					?> 


			  	<div class="col-md-4">
			      <div class="thumbnail">
			        <img class="redonda-arriba" alt="Thumbnail"  src="<?php bloginfo('template_url')?>/assets/images/new-zeland.jpg">
			        <div class="caja-texto">
			          <h2>Vamos a Nueva Zelanda!</h2>
			          <p class="card-text">Hacks y todo lo que necesitas saber para obtener tu working holiday...</p>
			          <a href="http://186.64.118.50/~feg7pablo/2018/08/24/alemania/"><button type="button" class="btn btn-sm btn-outline-secondary">ver más</button></a>
			        </div>
			      </div>
			    </div>
			    <div class="col-md-4">
			      <div class="thumbnail">
			        <img class="redonda-arriba" alt="Thumbnail"  src="<?php bloginfo('template_url')?>/assets/images/alemania.jpg">
			        <div class="caja-texto">
			          <h2>Alemania al alcance de tu mano</h2>
			          <p class="card-text">Hacks y todo lo que necesitas saber para obtener tu working holiday...</p>
			          <a href="http://186.64.118.50/~feg7pablo/2018/08/24/alemania/"><button type="button" class="btn btn-sm btn-outline-secondary">ver más</button></a>
			        </div>
			      </div>
			    </div>
			    <div class="col-md-4">
			      <div class="thumbnail">
			        <img class="redonda-arriba" alt="Thumbnail"  src="<?php bloginfo('template_url')?>/assets/images/ireland.jpg">
			        <div class="caja-texto">
			          <h2>Irlanda!</h2>
			          <p class="card-text">Hacks y todo lo que necesitas saber para obtener tu working holiday... </p>
			          <a href="http://186.64.118.50/~feg7pablo/2018/08/24/japon/"><button type="button" class="btn btn-sm btn-outline-secondary">ver más</button></a>
			        </div>
			      </div>
			    </div>
			    <div class="col-md-4">
			      <div class="thumbnail">
			        <img class="redonda-arriba" alt="Thumbnail"  src="<?php bloginfo('template_url')?>/assets/images/korea.jpg">
			        <div class="caja-texto">
			          <h2>imainate en Sur Corea </h2>
			          <p class="card-text">Hacks y todo lo que necesitas saber para obtener tu working holiday...</p>
			          <a href="http://186.64.118.50/~feg7pablo/2018/08/24/japon/"><button type="button" class="btn btn-sm btn-outline-secondary">ver más</button></a>
			        </div>
			      </div>
			    </div>

			    <div class="col-md-4">
			      <div class="thumbnail">
			        <img class="redonda-arriba" alt="Thumbnail"  src="<?php bloginfo('template_url')?>/assets/images/australia.jpeg">
			        <div class="caja-texto">
			          <h2>Viajar por Australia</h2>
			          <p class="card-text">Hacks y todo lo que necesitas saber para obtener tu working holiday... </p>
			          <a href="http://186.64.118.50/~feg7pablo/2018/08/24/australia/"><button type="button" class="btn btn-sm btn-outline-secondary">ver más</button></a>
			        </div>
			      </div>
			    </div>
			      <div class="col-md-4">
			      <div class="thumbnail">
			        <img class="redonda-arriba" alt="Thumbnail"  src="<?php bloginfo('template_url')?>/assets/images/japon.jpg">
			        <div class="caja-texto">
			          <h2>Imagina todo lo que puedes aprender de la cultura Japonesa</h2>
			          <p class="card-text">Hacks y todo lo que necesitas saber para obtener tu working holiday...</p>
			          <a href="http://186.64.118.50/~feg7pablo/2018/08/24/japon/"><button type="button" class="btn btn-sm btn-outline-secondary">ver más</button></a>
			        </div>
			      </div>
			    </div>
		      </div>
		     </div>
		    </div>
<?php get_footer() ?>