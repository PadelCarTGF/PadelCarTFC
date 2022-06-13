<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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




<div class="table-responsive">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th> Pista </th>
				<th> Fecha </th>
				<th> Hora </th>
				<th> Núm Jugadores</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="explotacion">
				<tr>
					<td>${reserva.nombre_pista}</td>
					<td>${reserva.fecha}</td>
					<td>${reserva.hora}</td>
					<td>${reserva.num_jugadores}</td>
			</c:forEach>
		</tbody>
	</table>
</div>

