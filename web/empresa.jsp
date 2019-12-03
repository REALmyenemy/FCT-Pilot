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
        <jsp:include page="header.jsp" />
		
		<section class="container empresa">
			
			<h2 class="row col-xs-12">Samsung</h2>
			<div class="row">
				
				<!--<img src="img/1696130.jpg" alt="Empresa Prueba" class="col-xs-12 col-md-3 principal"/>-->
				<div class="col-xs-12 col-md-3 principal">
					<img src="img/1696130.jpg" alt="Empresa Prueba" class="row principal"/>
					<div class="row">
						<img class="col-xs-4 preview" src="img/edificio-de-uso-industrial---escaparate-en-vega-del-rey-camas-7525-2-1.jpg" />
						<img class="col-xs-4 preview" src="img/empresas.jpeg" />
						<div class="col-xs-4 preview more"> Ver m&aacute;s </div>
					</div>
				</div>
				<div class="col-md-6">
					<p class="col-xs-12">Valoración de la empresa: &nbsp;&nbsp;&nbsp;<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i></p>
					<p class="col-xs-12">Valoración verificada: &nbsp;&nbsp;&nbsp;<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i></p>
					
					<p class="col-xs-12">Telecomunicaciones</p>
					<p>Samsung es un excelente lugar para trabajar con personas geniales, en un ambiente excepcional, con amplio soporte para los empleados y la oportunidad de ser parte de la innovación que marca una diferencia real en las vidas de millones de personas en todo el mundo. <br />No importa qué tipo de trabajo quieras desempeñar porque en Samsung hay una oportunidad para todos. Este es el lugar donde puedes convertirte en un experto mundial en tu campo y lanzar tu carrera profesional.</p>
				</div>
				<div class="col-md-3 principal">
					<div class="mapa">
					<iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
							src="https://www.openstreetmap.org/export/embed.html?bbox=
							-6.03649
							%2C37.39841
							%2C-6.03449
							%2C37.40041
							&amp;layer=mapnik"></iframe><br />
					<small><a href="https://www.openstreetmap.org/#map=17/37.39941/-6.03549">Ampliar Mapa</a></small>
					</div>
					<!--
						Para montar el iframe hace falta duplicar las coordenadas de la hubicación geocoding
						En la URL por ejemplo, coges el último parámetro seguido del penúltimo, y al tercer decimal, le restas 1,
						y se lo sumas a su pareja.	 
					-->
					<!--https://github.com/openstreetmap/Nominatim/issues/885-->
					<h5>http://nominatim.openstreetmap.org/reverse.php?format=json&lat=51.896801191943&lon=-0.49737201287174&zoom=16&accept-language=en</h5><br/> 
					<p>Calle de prueba uno dos tres</p>
					<p>C.P.:12345
				</div>
				
			</div>
		
		</section>

		<div class="row">

		</div>

		<section class="opiniones container opinionBorder">
			<article class="opinion container row">
				<div class="user col-sm-3">
					<h6>PaquitoElChocolatero</h6>
					<p class="verified">¡FCT certificada!</p>
				</div>
				
				<div class="comentario col-sm-9">
					<p>Valoraci&oacute;n:	<i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></p>	
					<p>Comentario: ¡El mejor sitio para hacer las pr&aacute;cticas! Es super f&aacute;cil de llegar, el edificio es comodo y el ambiente de trabajo muy agradable. El problema es que no siempre hay aparcamiento, pero la empresa 10/10</p>
				</div>
			</article>
			<article class="opinion container row">
				<div class="user col-sm-3">
					<h6>SuperMario</h6>
					<p>Pendiente de verificaci&oacute;n</p>
				</div>
				
				<div class="comentario col-sm-9">
					<p>Valoraci&oacute;n:	<i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i></p>	
					<p>Comentario: Es horrible, te dejan en tu mundo sin ense&ntilde;arte nada, y despu&eacute;s te exigen muchas cosas. Adem&aacute;s, ¿Qu&eacute; es eso de ir con traje? ¡No somos oficinistas!</p>
				</div>
			</article>
		</section>
		
		<div class="modal fade" id="modalImage">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<img src="img/Logo.png" class="modal-body">
					
					
				</div>
			</div>
		</div>
		
		
		
		<jsp:include page="footer.jsp" />
		
		
		
		<div class="modal fade" id="modalImage">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<img src="img/Logo.png" class="modal-body">
					
					
				</div>
			</div>
		</div>
		
		<div class="hidden">
			<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />

			<link rel="stylesheet" type="text/css" href="css/all.css" />
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
			
			<link rel="stylesheet" type="text/css" href="css/styles.css" />
			
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery-3.3.1.slim.min.js"></script>
			<script src="js/popper.min.js"></script>
			<script src="js/functions.js"></script>
		</div>

    </body>
</html>
