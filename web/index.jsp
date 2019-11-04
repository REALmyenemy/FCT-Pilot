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
		<jsp:include page="header.jsp" />
		
		<section id="title-enroll">
			<div class="jumbotron">
				<div class="container-fluid">
					<h3 id="cormorant">¡Comparte opiniones sobre tus pr&aacute;cticas con todo el mundo!</h3>
					<p>
						<input type="text" id="mailbox" name="mail" id="mail" placeholder="¡Escribe tu correo!" />
						<!--<a class="btn btn-primary btn-lg" href="login.jsp" >Inscr&iacute;bete Ahora &raquo;</a>-->
						<button class="btn btn-primary btn-lg" onclick="getandsend()" >Inscr&iacute;bete Ahora &raquo;</button>
					</p>
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

 				


		<jsp:include page="footer.jsp" />

		<div class="hidden">
			<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />

			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
			<link href="https://fonts.googleapis.com/css?family=Cormorant+SC&display=swap" rel="stylesheet"> 

			<link rel="stylesheet" type="text/css" href="css/styles.css" />
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery-3.3.1.slim.min.js"></script>
			<script src="js/popper.min.js"></script>
			<script src="js/functions.js"></script>
		</div>
	</body>
</html>