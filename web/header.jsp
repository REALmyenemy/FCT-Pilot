<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <header>	
			
		</header>
		<nav class="navbar">
			<a class="navbar-brand" id="inicio" href="/FCT_Pilot"><img src="img/Logo.png" id="site-logo" alt="FCT Pilot">
				FCT Pilot
			</a>
			<ul class="nav">
				
				<section class="nav search-sec">
					<div class="container">
						<form action="search" method="get">
							<div class="row">
								<div class="col-lg-12">
									<div class="row" id="custom-search-input">
										<div class="col-lg-5 col-md-5 col-sm-12 p-0">
											<input type="text" class="form-control search-slt" name="name" placeholder="Empresa, Sector...">
										</div>
										 <div class="col-lg-5 col-md-5 col-sm-12 p-0 bar-left">
											<input type="text" class="form-control search-slt" name="place" placeholder="Ciudad">
										</div>
										<div class="col-lg-2 col-md-2 col-sm-12 p-0 bar-left">
											<li class="margin-t-lg"><label for="buscar" href="" class="btn btn-primary btn-block"><i class="fas fa-search" ></i></label>
												<input type="submit" value="buscar" id="buscar" class="hidden"/>
											</li>
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
					
				-->
				</ul>
			
			<ul class="nav justify-content-end">
				<%
					if (session.getAttribute("sesion")==null) {
				%>	
				
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="login.jsp">Conectarse</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="login.jsp">Registrarse</a>
				</li>
				<%
				} else {
				%>
				<li class="nav-item">
					<a class="nav-link btn btn-primary btn-block" href="profile.jsp">Mi perfil</a>
				</li>
				
				<%
					}
				%>

			</ul>			
		</nav>
    </body>
</html>
