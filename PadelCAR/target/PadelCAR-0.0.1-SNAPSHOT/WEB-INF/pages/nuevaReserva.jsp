<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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


<!--  Para mantener el formato del encabezado, men� y  pie de p�gina en todas las p�ginas jsp deben ir tal cual: el heda, el header, el nav y el footer, esas etiquetas con su contenido.
S�lo modificar el contenido de la etiqueta >>>> section id="site-content"-->
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
								<p>Controla las pistas de p�del</p>
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
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">RESERVAS <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="nuevaReserva">NUEVA RESERVA</a></li>
								<li><a href="modificarReserva">MODIFICAR RESERVA</a></li>
							</ul></li>
						<li><a href="ventajas">VENTAJAS DEL CLUB</a></li>
						<li><a href="contacto">CONTACTO</a></li>

					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/PadelCAR"> <span
								class="glyphicon glyphicon-log-in"></span> Cerrar sesi�n
						</a></li>

					</ul>
				</div>
			</nav>
		</header>
		<h3 style="color: graytext;">${correo }</h3>
		<div class="col-sm-12">


			<section id="site-content">

				<!--  INDICAR EL FORMULARIO PARA DAR DE ALTA UNA NUEVA RESERVA ........ -->

				<spring:url value="/nuevaReserva/guardar" var="saveURL" />

				<div class="table-responsive">
					<form:form action="${saveURL}" method="POST"
						modelAttribute="reservaForm" id="nuevaReserva">
						<form:hidden path="id" />
						<!--	<form:hidden path="cliente_id"/>              -->
						<!-- hay que traer el valor de cliente -->
						<table class="table table-striped table-hover">
							<tr>
								<th>Cliente</th>
								<td><form:input path="cliente_id" value="${id_cli}" readonly="true" 
										maxlength="3"/></td>
							</tr>
							<tr>
								<th>Nombre Pista*</th>
								<td><form:select path="nombre_pista" required="required">
										<form:option value="" label="-- Elige una pista --" />
										<form:option value="Aqua" label="Aqua"> Aqua </form:option>
										<form:option value="Buba" label="Buba"> Buba </form:option>
										<form:option value="Limbo" label="Limbo"> Limbo </form:option>
										<form:option value="Master" label="Master"> Master </form:option>

									</form:select></td>

							</tr>
							<tr>

								<th>Fecha*</th>
								<td><form:input path="fecha" type="date" name="Fecha" /></td>

							</tr>
							<tr>
								<th>Hora*</th>
								<td><form:input path="hora" type="time" value="08:00:00"
										max="22:00:00" min="08:00:00" step="1" name="Hora" /></td>

							</tr>
							<tr>
								<th>Numero Jugadores</th>
								<td><form:input path="num_jugadores" type="number" min="1"
										max="4" />
								<td>
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


			<footer
				style="position: relative; text-align: center; background-color: #333; color: #848484;">
				<div>
					<small> - Carlos, Alfredo y Rafaela - </small> <br> <small>
						*Copyright &copy; 2022. All rights reserved.* </small>
				</div>
			</footer>

		</div>
	</div>

</body>
</html>