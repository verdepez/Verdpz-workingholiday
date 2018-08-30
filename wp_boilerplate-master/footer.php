<footer>
			<div class="container color-fondo">
				<div class="row">
				  <section class="col-md-4 col-sm-10">
					<h3>Contacto</h3>
					<p>Tupungato 10070 Vitacura, Santiago de Chile</p>
					<p>F: 22170821 - 22170811</p>
				</section>
				<section class="col-md-4 col-sm-10">
					<h3>Suscribete</h3>
					<p>Recibe informaciòn de nuestra noble causa en tu correo.</p>
					<form action="">
						<input type="text" placeholder=" Ingresa tu e-mail">
						<button type="submit">Enviar</button>
					</form>
				</section>
				<section class="col-md-4 col-sm-10">
					<h3>Donaciones</h3>
					<p>Cta.Cte. Banco BCI N° 85999997</p>
					<p>RUT: 72.169.900-5</p>

					<p><a href="mailTo:nosotros@workingholiday.cl">nosotros@workingholiday.cl</a></p>
				</section>
				</div>
			</div>
			<div style="clear:  both;"></div>		
			<aside>
				<h4>DESAFIOLATAM 2018 - CURSO FRONT-END G7</h4>
			</aside>
		</footer>
		<script>


			var map;

			function initMap() {
				var location = { lat: 10.4686988, lng: -67.0304522 };

				map = new google.maps.Map(document.getElementById('map'), {
					center: location,
					zoom: 3
				});
				var mapOptions = {
				  zoom: 3,
				  center: myLatlng,
				  mapTypeId: 'satellite',
				};
				var marker = new google.maps.Marker({position: location, map: map});


			}


		</script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBK2mop5mHX803P0aY71hYkCe6GfgbF6WY&callback=initMap" async defer></script>
		<script src="<?php bloginfo('template_url')?>/assets/js/lib/jquery-3.3.1.js"></script>
		<script src="<?php bloginfo('template_url')?>/assets/js/lib/jquery-migrate-1.4.1.js"></script>
		<script src="<?php bloginfo('template_url')?>/assets/js/lib/bootstrap.js"></script>

<?php wp_footer() ?>
</body>
</html>






