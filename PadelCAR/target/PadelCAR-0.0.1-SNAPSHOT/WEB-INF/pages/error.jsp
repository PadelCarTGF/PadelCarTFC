<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<title>PAGINA DE ERROR</title>

<link href="<c:url value='/static/css/estilosApp.css' />"
	rel="stylesheet"></link>
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
	<div style="margin-bottom: 30px; margin-top: 20px;">
		<button type="button" onclick="history.back()" class="btn btn-warning">
			VOLVER</button>
	</div>
	<br>
	<h3>
		<strong>SE HA PRODUCIDO UNA EXCEPCIÓN </strong>
	</h3>
	<br>
	<table>
		<tr valign="top">
			<td width="40%"><b>Error:</b></td>
			<td>${pageContext.exception}</td>
		</tr>
		<tr valign="top">
			<td><b>URI:</b></td>
			<td>${pageContext.errorData.requestURI}</td>
		</tr>
		<tr valign="top">
			<td><b>Status code:</b></td>
			<td>${pageContext.errorData.statusCode}</td>
		</tr>
		<tr valign="top">
			<td><b>Stack trace:</b></td>
			<td><c:forEach var="trace"
					items="${pageContext.exception.stackTrace}">
					<p>${trace}</p>
				</c:forEach></td>
		</tr>
	</table>
	<img src="/AppAgroGestion/static/img/error.jpg" alt="Error"
		style="min-height: 5em; max-height: 16em; margin-left: auto; margin-right: auto; float: right;">
</body>
</html>
