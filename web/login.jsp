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
    <body id="loginPage">
		<header class="container empty"><a href="index.jsp"><img class="logo" src="img/header.png"></a></header>
        <div class="container-fluid row curhead">
			<form class="container col-md-5">
				<h3>Usuario registrado</h3>
				<hr class="hr" />
				<p>Accede via usuario y contrase&ntilde;a</p>
				<div class="row"><div class="col-sm-4">Nombre de usuario&nbsp;</div> <input type="text" name="usu" id="lusu" class="col-sm-6" /></div>
				<div class="row"><div class="col-sm-4">Contrase&ntilde;a&nbsp;</div> <input type="password" name="pass" id="lpass" class="col-sm-6" /></div>
				<a href="#">¿Contrase&ntilde;a olvidada?</a> <br />
				<input type="submit" value="Acceder" />
				<hr />
				<!--<a href="#" class="button btn-block btn-primary"> <i class="fab fa-facebook-f"></i> Login con Facebook</a>-->
				<a href="#" class="button btn-block btn-primary"> <img class="falseFontAwesome" src="img/facebook-f-brands.svg" title="facebook" alt="F "/> Login con Facebook</a>
				<hr />
				<!--<a href="#" class="button btn-block btn-primary"><i class="fab fa-google-plus-g"></i>Login con Google+</a>-->
				<a href="#" class="button btn-block btn-primary"><img class="falseFontAwesome gplus" src="img/google-plus-g-brands.svg" title="google" alt="G+ "/>Login con Google+</a>
			</form>
			
			<form class="container col-md-5">
				<h3>Alta usuario</h3>
				<hr class="hr" />
				<p>Registro de datos</p>
<!--				<p>Nombre de usuario *&nbsp; <input type="text" name="usu" id="rusu" required="requrired" /></p>
				<p>Contrase&ntilde;a *&nbsp; <input type="password" name="pass" id="rpass" required="requrired" /></p>
				<p>Nombre&nbsp; <input type="text" name="name" id="name" /></p>
				<p>Apellido/s&nbsp; <input type="text" name="lastname" id="lastname" /></p>
				<p>Fecha nacimiento: *&nbsp; <input type="date" name="birth" id="birth" required="requrired" /></p>-->
				<div class="row"><div class="col-sm-4"> Nombre de usuario *&nbsp;</div> <input type="text" name="usu" id="rusu" required="requrired" class="col-sm-6" /></div>
				<div class="row"><div class="col-sm-4">Contrase&ntilde;a *&nbsp;</div> <input type="password" name="pass" id="rpass" required="requrired" class="col-sm-6" /></div>
				<div class="row"><div class="col-sm-4">Nombre&nbsp;</div> <input type="text" name="name" id="name" class="col-sm-6" /></div>
				<div class="row"><div class="col-sm-4">Apellido/s&nbsp;</div> <input type="text" name="lastname" id="lastname" class="col-sm-6" /></div>
				<div class="row"><div class="col-sm-4">Fecha nacimiento: *&nbsp;</div> <input type="date" name="birth" id="birth" required="requrired" class="col-sm-6" /></div>
				
				<div class="row"><input type="checkbox" required="required" name="privacy" id="privacy" class="col-sm-1" /><label for="privacy" class="col-sm-11">Pulsa aqu&iacute; para confirmar que has leido y aceptado <a href="privacy.html" target="_blank">los terminos de privacidad</a>.</label></div>
				<input type="submit" value="Darse de alta" />
				

			</form>	
			
		</div>
		
		
		<div class="hidden">
			<link href="https://fonts.googleapis.com/css?family=Bree+Serif&display=swap" rel="stylesheet">
			<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet"> 
			
			<link rel="stylesheet" type="text/css" href="css/all.css" />
			<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.9.0/css/all.css">
			
			<link rel="stylesheet" type="text/css" href="css/styles.css" />
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery-3.3.1.slim.min.js"></script>
			<script src="js/popper.min.js"></script>
			<script src="js/functions.js"></script>
		</div>
    </body>
			
</html>
