<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>

<head>
<link href="<c:url value='/PadelCAR/static/css/estilosApp.css' />"
	rel="stylesheet"></link>
<link
	href="<c:url value='https://fonts.googleapis.com/css?family=Abril+Fatface|Macondo'/>"
	rel="stylesheet" />
<link href="/PadelCAR/static/css/bootstrap.css" rel="stylesheet"
	media="screen" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/PadelCAR/static/js/bootstrap.js"></script>
<script src="/PadelCAR/static/js/funcionesApp.js"></script>
</head>

<body>

	<div class="container">

		<header>
			<div id="titulos">
				<div id="encabezado" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#encabezado" data-slide-to="0" class="active"></li>
						<li data-target="#encabezado" data-slide-to="1"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="/PadelCAR/static/img/pista.jpg" alt="Pista"
								style="min-height: 5em; max-height: 16em; margin-left: auto; margin-right: auto;">
							<div class="carousel-caption">
								<h3>Padel CAR</h3>
								<p>Controla las pistas de pádel</p>
							</div>
						</div>

						<div class="item">
							<img src="/PadelCAR/static/img/raqueta.jpg" alt="Raqueta"
								style="min-height: 5em; max-height: 16em; margin-left: auto; margin-right: auto;">
							<div class="carousel-caption">
								<h3>Padel CAR</h3>
								<p>Selecciona la pista que deseas</p>
							</div>
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#encabezado"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Anterior</span>
					</a> <a class="right carousel-control" href="#encabezado"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Siguiente</span>
					</a>
				</div>
			</div>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="/PadelCAR" title="Inicio"><span
							class="glyphicon glyphicon-home"></span></a>
					</div>
					<ul class="nav navbar-nav">
						<li><a href="clientes">NUEVO USUARIO</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">RESERVAS <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="pagEnConstruccion">NUEVA RESERVA</a></li>
								<li><a href="pagEnConstruccion">MODIFICAR RESERVA</a></li>
							</ul></li>
						<li><a href="pagEnConstruccion">VENTAJAS DEL CLUB</a></li>
						<li><a href="pagEnConstruccion">CONTACTO</a></li>
						
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login"><span
								class="glyphicon glyphicon-log-in"></span> Inicia sesión</a></li>
					</ul>
				</div>
			</nav>
		</header>




		<div class="col-sm-12">
			<section id="site-content">

				<div style="margin-bottom: 30px; margin-top: 20px;">
					<button type="button" onclick="history.back()"
						class="btn btn-warning">VOLVER</button>
				</div>

				<div id="msgSalida"></div>
				<spring:url value="/cliente/save" var="saveURL" />

				<div class="table-responsive">
					<form:form action="${saveURL }" method="POST"
						modelAttribute="clienteForm" id="nuevoCliente">
						<form:hidden path="id" />
						<table class="table table-striped table-hover">
							<tr>
								<th>Nombre*</th>
								<td><form:input path="nombre" required="required"
										maxlength="45" name="Nombre" /></td>
							</tr>
							<tr>
								<th>Apellido 1*</th>
								<td><form:input path="apellido1" required="required"
										maxlength="25" name="Apellido 1" /></td>
							</tr>

							<tr>
								<th>Apellido 2</th>
								<td><form:input path="apellido2" maxlength="25"
										name="Apellido 2" /></td>
							</tr>
							<tr>
								<th>Fecha de Nacimiento*</th>
								<td><form:input path="fecha_nac" required="required"
										type="date" /></td>
							</tr>

							<tr>
								<th>Correo electrónico*</th>
								<td><form:input type="email" path="mail" maxlength="40" /></td>
							</tr>
							<tr>
								<th>Password*</th>
								<td><form:input path="password" maxlength="8"
										required="required" name="Password" /></td>
							</tr>

							<tr>
								<td><button type="submit" class="btn btn-success">
										GUARDAR</button></td>
							</tr>

						</table>
					</form:form>
					<p>(*) Campos obligatorios</p>
				</div>
			</section>
		</div>
	</div>

	<footer
		style="position: relative; text-align: center; background-color: #333; color: #848484;">
		<div>
			<small> - Carlos, Alfredo y Rafaela - </small> <br> <small>
				*Copyright &copy; 2022. All rights reserved.* </small>
		</div>
	</footer>

</body>
</html>
