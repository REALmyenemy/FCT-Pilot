
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
        <jsp:include page="header.jsp" />
		
		
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
			<article class="row">
				
				<img src="../img/93938348.jpg" alt="Empresa Prueba" class="col-xs-12 col-md-3"/>
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
			<article class="row">
				
				<img src="../img/deloitte-cripto-blockchain.jpg" alt="Empresa Prueba" class="col-xs-12 col-md-3"/>
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
		
		<jsp:include page="footer.jsp" />
		
		<div class="hidden">
			<link href="https://fonts.googleapis.com/css?family=Bree+Serif&display=swap" rel="stylesheet">
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
