
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
						<li><a href="clientes">NUEVO USUARIO</a></li>
						<c:if test="${para.valor}"> 
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">RESERVAS <span class="caret"></span>
							</a>
								<ul class="dropdown-menu">
									<li><a href="nuevaReserva">NUEVA RESERVA</a></li>
									<li><a href="pagEnConstruccion">MODIFICAR RESERVA</a></li>
								</ul></li>
						</c:if>
						<li><a href="ventajas">VENTAJAS DEL CLUB</a></li>
						<li><a href="contacto">CONTACTO</a></li>

					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${param.valor1}"> 
							<li><a href="/PadelCAR"> 
								<span class="glyphicon glyphicon-log-in"></span> Cerrar sesi�n
							</a></li>
						</c:if>
						<c:if test="${!param.valor1}"> 
							<li><a href="login"> 
								<span class="glyphicon glyphicon-log-in"></span> Iniciar sesi�n
							</a></li>
						</c:if>
					</ul>
				</div>
			</nav>
		</header>

		<div class="row">
			<div class="col-sm-12">
				<section id="site-content">

					<div style="position: relative; text-align: center;">
						<table width="90%">

							<tr>
								<td><img src="/PadelCAR/static/img/direccion.jpg"
									alt="Direcci�n"
									style="width: 150px; margin-left: auto; margin-right: auto;"></td>
								<td><img src="/PadelCAR/static/img/telefono.jpg"
									alt="Tel�fono"
									style="width: 150px; margin-left: auto; margin-right: auto;"></td>
								<td><img src="/PadelCAR/static/img/email.jpg" alt="Email"
									style="width: 150px; margin-left: auto; margin-right: auto;" /></td>
							</tr>

							<tr>
								<td><h3
										style="font-weight: bold; text-transform: uppercase;">DIRECCION</h3>
									<p>
										<span> <b>Padel CAR</b> <br> Av. de Fernando
											Alonso, 8 <br> 28108 Alcobendas <br> Madrid

										</span>
									</p></td>
								<td><h3
										style="font-weight: bold; text-transform: uppercase;">TELEFONO</h3>
									<p>
										<span> <b>Recepci�n Padel CAR</b> <br> 91 789 546
											524 <br>

										</span>
									</p></td>
								<td><h3
										style="font-weight: bold; text-transform: uppercase;">Email</h3>
									<p>
										<span> <b>Informaci�n</b> <br> info@padelcar.com <br>
										</span>
									</p>
									<p>
										<span> <b>Quejas y sugerencias</b> <br>
											sugerencias@padelcar.com <br>
										</span>
									</p></td>
							</tr>

						</table>
					</div>


					<div
						style="text-align: center; margin-bottom: 20px; margin-top: 50px;">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3032.292420374185!2d-3.6183981851906624!3d40.535128256355165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd422da995a9e6ab%3A0x3dd2d61b103821da!2sUniversidad%20Europea%20de%20Madrid%20(Campus%20de%20Alcobendas)!5e0!3m2!1ses!2ses!4v1652702048818!5m2!1ses!2ses"
							width="1000" height="300" style="border: 0;" allowfullscreen=""
							loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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
	</div>
</body>
</html>

