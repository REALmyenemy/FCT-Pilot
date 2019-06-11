
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
    <body id="empresa">
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
		
		<section class="container">
			
			<h2 class="row col-xs-12">Empresa de Prueba</h2>
			<div class="row">
				
				<!--<img src="../img/1696130.jpg" alt="Empresa Prueba" class="col-xs-12 col-md-3 principal"/>-->
				<div class="col-xs-12 col-md-3 principal">
					<img src="../img/1696130.jpg" alt="Empresa Prueba" class="row principal"/>
					<div class="row">
						<img class="col-xs-4 preview" src="../img/edificio-de-uso-industrial---escaparate-en-vega-del-rey-camas-7525-2-1.jpg" />
						<img class="col-xs-4 preview" src="../img/empresas.jpeg" />
						<div class="col-xs-4 preview more"> Ver m&aacute;s </div>
					</div>
				</div>
				<div class="col-md-6">
					<p class="col-xs-12">Valoración de la empresa: &nbsp;&nbsp;&nbsp;<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i></p>
					<p class="col-xs-12">Valoración verificada: &nbsp;&nbsp;&nbsp;<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i></p>
					
					<p class="col-xs-12">Telecomunicaciones</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec maximus, ante commodo euismod facilisis, odio arcu lacinia purus, non facilisis massa elit ac arcu. Aliquam blandit magna ante. Vestibulum ut porta nunc, vel molestie odio. Aliquam erat volutpat. Phasellus at magna vitae felis gravida efficitur. Phasellus in risus vel metus placerat efficitur ac sit amet velit. Vivamus eget est eu orci tincidunt maximus non nec nisl. Sed et nisl ipsum. Suspendisse potenti. Fusce eget ipsum sit amet sapien dapibus lacinia. Donec a varius dui. Sed a nisl in mi pretium viverra. Phasellus diam felis, cursus eu nibh sollicitudin, tincidunt rutrum ex. Cras suscipit ornare blandit. </p>
				</div>
				<div class="col-md-3 principal">
					<img class="mapa" src="../img/screenshot.143.png" />
					<h5>Barcelona</h5><br/> 
					<p>Calle de prueba uno dos tres</p>
					<p>C.P.:12345
				</div>
				
				
			</div>
		
			
		</section>
<!--<a class="nav-item nav-link" href="#" data-toggle="modal" data-target="#modalImage" onclick="verImagen(this.id)" ><img class="reducida" src="../img/Logo.png" /></a>-->		
		
		
		
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
		
		
		
		<div class="modal fade" id="modalImage">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<img src="../img/Logo.png" class="modal-body">
					
					
				</div>
			</div>
		</div>
		
		<div class="hidden">
			<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />

			<link rel="stylesheet" type="text/css" href="../css/all.css" />
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
			
			<link rel="stylesheet" type="text/css" href="../css/styles.css" />
			
			<script src="../js/bootstrap.min.js"></script>
			<script src="../js/jquery-3.3.1.slim.min.js"></script>
			<script src="../js/popper.min.js"></script>
			<script src="../js/functions.js"></script>
		</div>

    </body>
</html>
