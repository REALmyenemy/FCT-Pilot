<%-- 
    Document   : forgotPassword
    Created on : 04-nov-2019, 13:07:17
    Author     : myenemy
    Location   : Indra-PC
    Based of   : https://www.codejava.net/coding/how-to-implement-forgot-password-feature-for-java-web-application
    Last edit  : 04-nov-2019, 13:07:17
    Info       : Skipped Steps 2 and 3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta author="Daniel Hidalgo Carmona" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>FCT pilot</title>
	</head>
    <body id="resetPassword">
		<header class="container empty"><a href="index.jsp"><img class="logo" src="img/header.png"></a></header>
        <div class="container-fluid row curhead">
			<form class="container col-md-5" method="post" action="Register">
				<h3>Recuperar contrase&ntilde;a</h3>
				<hr class="hr" />
				<p>
				Escribe tu correo electr&oacute;nico. Si existe, te mandaremos un mail con una nueva clave.
				</p>
				<label for="email">Email:</label>
				<input type="text" name="email" id="email" size="20">
				
				<input type="submit" value="Reiniciar clave" />
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
			<script type="text/javascript">

			$(document).ready(function() {
				$("#resetPassword").validate({
					rules: {
						email: {
							required: true,
							email: true
						}      
					},

					messages: {
						email: {
							required: "Escribe tu correo",
							email: "Escribe un correo electrónico"
						}
					}
				});

			});
			</script> 
		</div>

		
    </body>
</html>
