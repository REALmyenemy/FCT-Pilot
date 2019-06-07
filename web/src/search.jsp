
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta author="Daniel Hidalgo Carmona" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>FCT pilot</title>
    </head>
    <body>
        <nav class="navbar">
			<a class="navbar-brand" id="inicio" href="#"><img src="../img/Logo.png" id="site-logo" alt="FCT Pilot">
				FCT Pilot
			</a>
			<ul class="nav">
				<!--
				<li><input type="text" name="empresa" id="empresa" /> </li>
				<li><input type="text" name="ubicacion" id="ubicacion" /> </li>
				<li class="margin-t-lg"><a href="#" class="btn btn-primary btn-block"><i class="fas fa-search"></i></a></li>
				-->
				<!--
					https://mdbootstrap.com/docs/jquery/forms/search/
					https://bootsnipp.com/tags/search
	
					-->
				<section class="nav search-sec">
					<div class="container">
						<form action="#" method="get">
							<div class="row">
								<div class="col-lg-12">
									<div class="row" id="custom-search-input">
										<div class="col-lg-5 col-md-5 col-sm-12 p-0">
											<input type="text" class="form-control search-slt" placeholder="Empresa, Sector...">
										</div>
										 <div class="col-lg-5 col-md-5 col-sm-12 p-0 bar-left">
											<input type="text" class="form-control search-slt" placeholder="Ciudad">
										</div>
										<div class="col-lg-2 col-md-2 col-sm-12 p-0 bar-left">
											<li class="margin-t-lg"><a href="#" class="btn btn-primary btn-block" onclick="buscar()"><i class="fas fa-search" ></i></a></li>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</section>

				<br><br>
				<!--
					https://stackoverflow.com/questions/9656523/jquery-autocomplete-with-callback-ajax-json
					https://fonts.google.com/specimen/Cormorant+SC
					https://fonts.google.com/specimen/Cormorant+Upright
				-->
				</ul>

			<ul class="nav justify-content-end">
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="src/login.jsp">Conectarse</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="src/login.jsp">Registrarse</a>
				</li>
			</ul>
		</nav>
		
		
		<!--Nombre, Sector, Ciudad, Resumen, Foto, Principal, valoración global, valoración verificada.-->
		
		
		<!--https://stackoverflow.com/questions/17830686/how-to-get-city-from-coordinates-->
		<section class="container">
			<!--foreach result-->
			<article class="row">
				
				<img src="../img/1696130.jpg" alt="Empresa Prueba" class="col-xs-12 col-md-3"/>
				<div class="col-xs-12 col-md-6">
					<h2 class="col-xs-1">Empresa de Prueba</h2>
					<p class="col-xs-2">Valoración de la empresa</p>
					<p class="col-xs-1">Valoración verificada</p>
					<p class="col-xs-1">Ciudad</p>
					<p class="col-xs-1">Sector</p>
				</div>
				<p class="col-xs-12 col-md-3">Lorem ipsum de la empresa</p>
				
				<a href="empresa.jsp&id=blablabla" class="btn btn-block btn-danger">Saber m&aacute;s</a>
				
			</article>
		</section>
		
		
		
		
		<footer class="page-footer font-small mdb-color pt-4">
			<div class="container text-center text-md-left">
				<div class="row text-center text-md-left mt-3 pb-3">


					<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
						<h6 class="text-uppercase mb-4 font-weight-bold">FCT Pilot</h6>
						<p>Estando en la formaci&oacute;n profesional, tanto en grado superior o en grado medio, tienes que hacer
							la formaci&oacute;n en centros de trabajo, o FCT para terminar el curso.<br />
							En FCT Pilot puedes opinar sobre como han sido tus pr&aacute;cticas, o buscar informaci&oacute;n si todav&iacute;a buscas.
						</p>
					</div>

					<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
						<h6 class="text-uppercase mb-4 font-weight-bold">Enlaces sobre FP</h6>
						<p>
							<a href="http://todofp.es">Portal de la FP</a>
						</p>
						<p>
							<a href="http://www.educacionyfp.gob.es/portada.html">Educación y FP</a>
						</p>
						<p>
							<a href="https://www.educaweb.com/">Educaweb</a>
						</p>
						<p>
							<a href="https://www.ifp.es/">Innovaci&oacute;n y FP</a>
						</p>
					</div>

					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
						<h6 class="text-uppercase mb-4 font-weight-bold">Afiliados</h6>
						<p>
							<a href="/wordpress">Blog</a>
						</p>
						<p>
							<a href="mailto:crossingsarkingwires@gmail.com?Subject=Empresa:">Soy empresa</a>
						</p>
						<p>
							<a href="#!">Shipping Rates</a>
						</p>
						<p>
							<a href="mailto:crossingsarkingwires@gmail.com">Soporte</a>
						</p>
					</div>


					<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
						<h6 class="text-uppercase mb-4 font-weight-bold">Contacto</h6>
						<p>
							<i class="fas fa-home mr-3"></i>Plaza Santa Ana 11, 41900</p>
						<p>
							<i class="fas fa-envelope mr-3"></i> <a href="mailto:crossingsarkingwires@gmail.com">Contacto</a><!--Puede que monte un servidor de correo para cambiar esto-->
						<p>
							<i class="fas fa-phone mr-3"></i> +34 692 405 405</p>
						<p>
							<i class="fas fa-user-check mr-3"></i>Daniel Hidalgo<br />Carmona</p>
							<!--<i class="fas fa-print mr-3"></i></p>-->
					</div>
				</div>

				<hr>
				<div class="row d-flex align-items-center">
					<div class="col-md-7 col-lg-8">
						<p class="text-center text-md-left"><span class="reverse">&copy;</span>
<!--									<a href="https://mdbootstrap.com/education/bootstrap/">
								<strong> MDBootstrap.com</strong>
							</a>-->
							<strong> Daniel Hidalgo Carmona</strong>
						</p>
					</div>
				</div>
			</div>
			
		</footer>
		
		<div class="hidden">
			<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
			<link href="https://fonts.googleapis.com/css?family=Bree+Serif&display=swap" rel="stylesheet">

			<link rel="stylesheet" type="text/css" href="../css/all.css" />
			<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
			
			<link rel="stylesheet" type="text/css" href="../css/styles.css" />
			<script src="../js/bootstrap.min.js"></script>
			<script src="../js/jquery-3.3.1.slim.min.js"></script>
			<script src="../js/popper.min.js"></script>
			<script src="../js/functions.js"></script>
		</div>

    </body>
</html>
