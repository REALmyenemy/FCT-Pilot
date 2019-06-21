<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta author="Daniel Hidalgo Carmona" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<script src="../js/jquery-3.3.1.slim.min.js"></script>
		<title>FCT pilot</title>
    </head>
    <body id="profilePage">
        <jsp:include page="header.jsp" />
		
		<section>
			<form class="container" method="post" action="">
				<legend>Cambiar datos</legend>
				<div class="row">
					<label for="name" class="col-xs-12 col-sm-3">Nombre: </label>
					<input type="text" id="name" name="name" value="<% %>"  class="col-xs-12 col-sm-4" />
				</div>
				<div class="row">
					<label for="surname"  class="col-xs-12 col-sm-3">Apellidos: </label>
					<input type="text" id="surname" name="surname" value="<% %>"  class="col-xs-12 col-sm-4" />
				</div>
				<div class="row">
					<label for="birthdate" class="col-xs-12 col-sm-3">Fecha nacimiento: </label>
					<input type="date" name="birthdate" id="birthdate" value="<% %>"  class="col-xs-12 col-sm-2" />
				</div>
				
				* Si actualizas estos datos, cualquier opinión verificada tendrá que revalidarse
				<input type="submit" value="Enviar" />
				
			</form>
			<form class="container" method="post" action="">
				<legend>Cambiar contrase&ntilde;a</legend>
				<div class="row">
					<label for="old" class="col-xs-12 col-sm-4">Contrase&ntilde;a antigua </label>
					<input type="password" id="old" name="old" value="<% %>"  class="col-xs-12 col-sm-3" />
				</div>
				<div class="row">
					<label for="new" class="col-xs-12 col-sm-4">Contrase&ntilde;a nueva </label>
					<input type="password" id="new" name="new" value="<% %>" class="col-xs-12 col-sm-3" />
				</div>
				<div class="row">
					<label for="repeat" class="col-xs-12 col-sm-4">Por seguridad, repitela: </label>
					<input type="password" id="repeat" name="repeat" value="<% %>" class="col-xs-12 col-sm-3" />
				</div>
				<input type="submit" value="Actualizar contraseña"/>
			</form>
			<form class="container" method="post" action="">
				<div class="row">
					<legend class="col-sm-3">Gestionar cuenta</legend>
					<a  class="col-sm-2" href="#" data-toggle="modal" data-target="#modalVacation"><i class="fas fa-info-circle"></i>&nbsp; M&aacute;s info</a>
				</div><br />
				<input type="radio" id="desactivar" name="desactivar" /> <label for="desactivar">Desactivar cuenta</label> <br /> 
				<input type="radio" id="borrar" name="borrar" /> <label for="borrar">Cancelar cuenta</label><br />
				<input type="checkbox" required="required" id="certain"/>&nbsp;<label for="certain">Confirmo que quiero ejecutar esta opci&oacute;n</label><br />
				<input type="submit" value="Enviar" />				
			</form>
			
		</section>
		
		
		<jsp:include page="footer.jsp" />
		
		<div class="modal fade" id="modalVacation" aria-hidden="true">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <p class="modal-body">
				Si desactivas tu cuenta, podr&aacute;s reactivarla en cualquier momento con tan solo recuperar tu contrase&ntilde;a, pero si la borras,
				todas tus opiniones, y valoraciones se borrar&iacute;n de nuestra base de datos, y tendr&aacute;s que registrarte de nuevo. <br />
				Tanto si desactivas tu cuenta como si la borras ¡Te hecharemos de menos!
			  </p>

			</div>
		  </div>
		</div>


				
		<div class="hidden">
			<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />

			<link rel="stylesheet" type="text/css" href="../css/all.css" />
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
			
			<link rel="stylesheet" type="text/css" href="../css/styles.css" />
			
			<script src="../js/bootstrap.min.js"></script>
			
			<script src="../js/popper.min.js"></script>
			<script src="../js/functions.js"></script>
			
		</div>

    </body>
</html>
