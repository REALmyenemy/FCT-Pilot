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
				<li><input type="text" name="empresa" id="empresa" /> </li>
				<li><input type="text" name="ubicacion" id="ubicacion" /> </li>
				<li class="margin-t-lg"><a href="#" class="btn btn-primary btn-block"><i class="fas fa-search"></i></a></li>
				<!--
					https://mdbootstrap.com/docs/jquery/forms/search/
					https://bootsnipp.com/tags/search
					https://bootsnipp.com/snippets/3k59p
					https://bootsnipp.com/snippets/dpV29
	
					<h4 class="text-center mt-5">three input search</h4>
					<h6 class="text-center mb-4">bootstrap 4</h6>
					<section class="search-sec">
						<div class="container">
							<form action="#" method="post" novalidate="novalidate">
								<div class="row">
									<div class="col-lg-12">
										<div class="row">
											<div class="col-lg-4 col-md-4 col-sm-12 p-0">
												<input type="text" class="form-control search-slt" placeholder="Enter Pickup City">
											</div>
											 <div class="col-lg-4 col-md-4 col-sm-12 p-0">
												<input type="text" class="form-control search-slt" placeholder="Enter Drop City">
											</div>
											<div class="col-lg-4 col-md-4 col-sm-12 p-0">
												<button type="button" class="btn btn-danger wrn-btn">Search</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</section>

					<br><br>
	
					https://stackoverflow.com/questions/9656523/jquery-autocomplete-with-callback-ajax-json
				-->
			</ul>
			<!--
			<div class="nav">
				<div><input type="text" name="empresa" id="empresa" /> </div>
				<div><input type="text" name="ubicacion" id="ubicacion" /> </div>
				<div class="margin-t-lg"><a href="#" class="btn btn-primary btn-block"><i class="fas fa-search"></i></a></div>
			</div>
			-->

			<ul class="nav justify-content-end">
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="#">Conectarse</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="#">Registrarse</a>
				</li>
			</ul>			
		</nav>


		<div class="row container" id="info">
			<div class="col-sm-3"></div>
			<div class="col-sm-3 container padding-x-xs">
				<i class="fas fa-video fa-2x"></i>
				<h4>asdasdasd</h4>
				<p>aaa</p>
			</div>
			
			<div class="col-sm-3">
				<i class="far fa-clock fa-2x"></i>
				<h4>qweqweqwe</h4>
				<p>aaa</p>
			</div>
			
			<div class="col-sm-3">
				<i class="fa fa-graduation-cap fa-2x"></i>
				<h4>Czxczxczxc</h4>
				<p>aaa</p>
			</div>
		</div>

		<div class="hidden">
			<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
			<link rel="stylesheet" type="text/css" href="css/brands.css" />

			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
			<link rel="stylesheet" type="text/css" href="css/regular.css" />
			<link rel="stylesheet" type="text/css" href="css/solid.css" />
			<link rel="stylesheet" type="text/css" href="css/styles.css" />
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery-3.3.1.slim.min.js"></script>
			<script src="js/popper.min.js"></script>
			<script src="js/functions.js"></script>
		</div>
	</body>
</html>