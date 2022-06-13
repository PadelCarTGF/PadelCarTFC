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


<!--  Para mantener el formato del encabezado, menú y  pie de página en todas las páginas jsp deben ir tal cual: el heda, el header, el nav y el footer, esas etiquetas con su contenido.
Sólo modificar el contenido de la etiqueta >>>> section id="site-content"-->
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
						<c:if test="${param.valor}"> 
							<li><a href="/PadelCAR"> 
								<span class="glyphicon glyphicon-log-in"></span> Cerrar sesión
							</a></li>
						</c:if>
						<c:if test="${!param.valor}"> 
							<li><a href="login"> 
								<span class="glyphicon glyphicon-log-in"></span> Iniciar sesión
							</a></li>
						</c:if>
					</ul>
				</div>
			</nav>
		</header>

		<div class="row" style="margin-botton: 20px;" align="center">
			<section id="site-content">
				<div class="container"
					style="margin-bottom: 30px; margin-top: 20px;">

					<h2 style="text-transform: uppercase;">
						<strong> Un mundo de ventajas pensando en ti. Descubrelas
						</strong>
					</h2>
					<br>
					<table width="90%">

						<tr>
							<td><img
								src="/PadelCAR/static/img/icono_regalobienvenida.png"
								alt="Regalo Bienvenida"></td>
							<td></td>
							<td><img src="/PadelCAR/static/img/icono_puntoscompra.png"
								alt="Puntos Reserva"></td>
							<td></td>
							<td><img src="/PadelCAR/static/img/icono_porciento.png"
								alt="Descuentos"></td>
						</tr>
						<tr>
							<td>
								<h5>
									<b> Regalo bienvenida </b>
								</h5>
								<p>Queremos darte la bienvenida al Club con 3 euros de saldo
									acumulados a tu tarjeta tras tu primera reserva realizada como
									socio del Club.</p>
							</td>
							<td></td>
							<td>
								<h5>
									<b> Puntos por reserva </b>
								</h5>
								<p>¡Qué gusto verte de nuevo! Por eso, recibirás puntos por
									cada reserva que te haran conseguir más ventajas y sorpresas.</p>
							</td>
							<td></td>
							<td><h5>
									<b> Descuentos en consumiciones </b>
								</h5>
								<p>Por ser del club puedes acumular saldo con tus reservas y
									canjearlo en las consumiciones en nuestro bar.</p></td>
						</tr>

						<tr>
							<td><img src="/PadelCAR/static/img/icono_regalocumple.png"
								alt="Regalo CumpleaÃ±os"></td>
							<td></td>
							<td><img src="/PadelCAR/static/img/icono_compartir.jpg"
								alt="Compartir"></td>
							<td></td>
						</tr>
						<tr>
							<td><h5>
									<b> Regalo de cumpleaños</b>
								</h5>
								<p>¡Qué gran día el de tu cumple! lo celebraremos a tu lado
									con un regalo... ¡Sorpresa!</p></td>
							<td></td>
							<td>
								<h5>
									<b> Campeonatos y entrenamientos </b>
								</h5>
								<p>Porque queremos compartir grandes momentos contigo. Te
									sorprenderemos con campeonatos y entrenamientos especiales para
									ti y los tuyos.</p>
							</td>
							<td></td>
						</tr>

					</table>

				</div>

			</section>
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

