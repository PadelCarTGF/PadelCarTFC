<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>PAGINA EN CONSTRUCCION</title>

<link href="<c:url value='/static/css/estilosApp.css' />" rel="stylesheet"></link>
<link
	href="<c:url value='https://fonts.googleapis.com/css?family=Abril+Fatface|Macondo'/>"
	rel="stylesheet" />
<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div style="margin-bottom:30px; margin-top:20px;">
		<button type="button" onclick="history.back()" class="btn btn-warning" >
		VOLVER</button>
	</div>
	<br>


	<div id="pagEnConstruccion" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#pagEnConstruccion" data-slide-to="0" class="active"></li>
			<li data-target="#pagEnConstruccion" data-slide-to="1"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="/PadelCAR/static/img/sorry.png" alt="Sorry"
					style="min-height: 5em; max-height: 22em; margin-left: auto; margin-right: auto;">
			</div>

			<div class="item">
				<img src="/PadelCAR/static/img/TechnicalIssues.jpg"
					alt="Problemas tecnicos" style="min-height: 5em; max-height: 22em; margin-left: auto; margin-right: auto;">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#pagEnConstruccion"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Anterior</span>
		</a> <a class="right carousel-control" href="#pagEnConstruccion"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Siguiente</span>
		</a>
	</div>
</body>
</html>
