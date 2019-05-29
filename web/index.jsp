<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta author="Daniel Hidalgo Carmona" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>FCT pilot</title>
	</head>
	<body>
		<header>	
			
		</header>
		<nav class="navbar">
			<a class="navbar-brand" id="inicio" href="#"><img src="img/Logo.png" id="site-logo" alt="FCT Pilot">
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
				<section class="navsearch-sec">
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
					<a class="nav-link btn btn-primary btn-block" href="#">Conectarse</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="#">Registrarse</a>
				</li>
			</ul>			
		</nav>
		
		<section id="title-enroll">
			<div class="jumbotron">
				<div class="container-fluid">
					<h3 id="cormorant">¡Comparte opiniones sobre tus pr&aacute;cticas con todo el mundo!</h3>
					<p><input type="text" id="mailbox" name="mail" id="mail" placeholder="¡Escribe tu correo!" /><a class="btn btn-primary btn-lg" href="login.html" >Inscr&iacute;bete Ahora &raquo;</a></p>
				</div>
			</div>
		</section>

		<div class="row container" id="info">
			<div class="col-sm-3"></div>
			<div class="col-sm-3 container padding-x-xs">
				<i class="fas fa-star fa-2x"></i>
				<h4>¡Da tus propias opiniones!</h4>
				<p>En FCT Pilot, puedes valorar las empresas para las pr&aacute;cticas y dar tu opini&oacute;n sobre ellas.</p>
			</div>
			
			<div class="col-sm-3">
				<i class="fas fa-bookmark fa-2x"></i>
				<h4>¡Lee las valoraciones!</h4>
				<p>Las valoraciones est&aacute;n separadas entre usuarios que han certificado que han hecho sus pr&aacute;cticas y usuarios que no. ¡As&iacute; sabr&aacute;s la diferencia entre las opiniones de los empleados y los empleados!</p>
			</div>
			
			<div class="col-sm-3">
				<i class="fas fa-images fa-2x"></i>
				<h4>Conoce la empresa</h4>
				<p>Cada empresa puede colgar muchas im&aacute;genes para promocionarse.</p>
			</div>
		</div>
		
<!--		<footer class="container-fluid">
			<p class="col-sm-4"><span class="reverse">&copy;</span>Daniel Hidalgo Carmona</p>
			<p class="col-sm-4"><span class="reverse">&copy;</span>Daniel Hidalgo Carmona</p>
			<p class="col-sm-4"><span class="reverse">&copy;</span>Daniel Hidalgo Carmona</p>
			<p class="col-sm-4"><span class="reverse">&copy;</span>Daniel Hidalgo Carmona</p>
			<p class="col-sm-4"><span class="reverse">&copy;</span>Daniel Hidalgo Carmona</p>
		</footer>-->
 				<footer class="page-footer font-small mdb-color pt-4">
					<div class="container text-center text-md-left">
						<div class="row text-center text-md-left mt-3 pb-3">
							
							
							<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
								<h6 class="text-uppercase mb-4 font-weight-bold">Company name</h6>
								<p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
									consectetur
									adipisicing elit.</p>
							</div>

							<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
								<h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
								<p>
									<a href="http://todofp.es">Portal de la FP</a>
								</p>
								<p>
									<a href="http://www.educacionyfp.gob.es/portada.html">Educación y FP</a>
								</p>
								<p>
									<a href="#!">BrandFlow</a>
								</p>
								<p>
									<a href="#!">Bootstrap Angular</a>
								</p>
							</div>
							
							<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
								<h6 class="text-uppercase mb-4 font-weight-bold">Useful links</h6>
								<p>
									<a href="#!">Your Account</a>
								</p>
								<p>
									<a href="#!">Become an Affiliate</a>
								</p>
								<p>
									<a href="#!">Shipping Rates</a>
								</p>
								<p>
									<a href="#!">Help</a>
								</p>
							</div>

							
							<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
								<h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
								<p>
									<i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
								<p>
									<i class="fas fa-envelope mr-3"></i> info@gmail.com</p>
								<p>
									<i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
								<p>
									<i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
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




			<%--<jsp:include page="test.jsp" />--%>

			<div class="hidden">
			<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
			<link rel="stylesheet" type="text/css" href="css/brands.css" />

			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
			<link href="https://fonts.googleapis.com/css?family=Cormorant+SC&display=swap" rel="stylesheet"> 
			<link rel="stylesheet" type="text/css" href="css/regular.css" />
			<link rel="stylesheet" type="text/css" href="css/styles.css" />
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery-3.3.1.slim.min.js"></script>
			<script src="js/popper.min.js"></script>
			<script src="js/functions.js"></script>
		</div>
	</body>
</html>