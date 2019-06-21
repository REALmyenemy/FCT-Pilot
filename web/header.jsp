<%-- 
    Document   : header
    Created on : 21-jun-2019, 6:52:44
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
				<%
					if (session.getAttribute("sesion")==null) {
				%>	
				
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="src/login.jsp">Conectarse</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="src/login.jsp">Registrarse</a>
				</li>
				<%
				} else {
				%>
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="src/profile.jsp">Mi perfil</a>
				</li>
				
				<%
					}
				%>

			</ul>			
		</nav>
    </body>
</html>
