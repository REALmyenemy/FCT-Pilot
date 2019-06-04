<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta author="Daniel Hidalgo Carmona" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>FCT pilot</title>
	</head>
    <body>
		<header class="container empty"><img src="../img/header.png"></header>
        <div class="container-fluid row curhead">
			<form class="container col-md-5">
				<h3>Usuario registrado</h3>
				<p>Accede via usuario y contrase&ntilde;a</p>
				<p>Nombre de usuario&nbsp; <input type="text" name="usu" id="lusu" /></p>
				<p>Contrase&ntilde;a&nbsp; <input type="password" name="pass" id="lpass" /></p>
				<a href="#">¿Contrase&ntilde;a olvidada?</a>
				<input type="submit" value="Acceder" />
				<hr />
				<a href="#" class="button btn-block btn-primary"> <i class="fab fa-facebook-f"></i> Login con Facebook</a>
				<hr />
				<a href="#" class="button btn-block btn-primary"><i class="fab fa-google-plus-g"></i>Login con Google+</a>
			</form>
			
			<form class="container col-md-5">
				<h3>Alta usuario</h3>
				<p>Registro de datos</p>
				<p>Nombre de usuario *&nbsp; <input type="text" name="usu" id="rusu" required="requrired" /></p>
				<p>Contrase&ntilde;a *&nbsp; <input type="password" name="pass" id="rpass" required="requrired" /></p>
				<p>Nombre&nbsp; <input type="text" name="name" id="name" /></p>
				<p>Apellido/s&nbsp; <input type="text" name="lastname" id="lastname" /></p>
				<p>Fecha nacimiento: *&nbsp; <input type="date" name="birth" id="birth" required="requrired" /></p>
				
				<input type="submit" value="Darse de alta" />
				

			</form>	
			
		</div>
		
		
		<div class="hidden">
			<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
			<link rel="stylesheet" type="text/css" href="../css/brands.css" />

			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
			<link rel="stylesheet" type="text/css" href="../css/regular.css" />
			<link rel="stylesheet" type="text/css" href="../css/styles.css" />
			<script src="../js/bootstrap.min.js"></script>
			<script src="../js/jquery-3.3.1.slim.min.js"></script>
			<script src="../js/popper.min.js"></script>
			<script src="../js/functions.js"></script>
		</div>
    </body>
			
</html>
