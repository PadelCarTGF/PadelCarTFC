<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>

	<head>
		<title><tiles:getAsString name="title" /></title>
		
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
		<div class="container" style="margin=0 auto;">
			<header>
				<tiles:insertAttribute name="header" />
			</header>
	
			<nav id="sidemenu">
				<tiles:insertAttribute name="menu" />
			</nav>
			<div class="col-sm-12">
				<section id="site-content">
					<tiles:insertAttribute name="body" />
				</section>
				<footer id="pie">
					<tiles:insertAttribute name="footer" />
				</footer>
			</div>
		</div>
	</body>
</html>