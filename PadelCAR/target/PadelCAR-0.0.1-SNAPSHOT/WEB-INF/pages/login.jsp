<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Login Padel CAR</title>

    <!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    <!-- Los iconos tipo Solid de Fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <!-- Nuestro css-->
    <link rel="stylesheet" type="text/css" href="static/css/estilosLogin.css" th:href="@{/css/estilosLogin.css}">

</head>
<body>
    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <div class="modal-content">
                <div class="col-12 user-img">
                    <img src="static/img/user3.jpg" th:src="@{/img/user3.jpg}"/>
                </div>
                <sf:form class="col-12" action="nuevaReserva" method="POST" modelAttribute="loginForm">
                    <div class="form-group" id="user-group">
                        <input type="text" class="form-control" placeholder="Correo electrónico" name="email"/>
                        <sf:errors name="email"/>                        
                    </div>
                    <div class="form-group" id="contrasena-group">
                        <input type="password" class="form-control" placeholder="Contraseña" name="password"/>
                        <sf:errors name="password"/>
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Ingresar </button>
                </sf:form>
                <form action="clienteAlta" method="get">
	                <div class="col-12 forgot">
	                    <a href="clientes">Registrarse</a>
	                </div>
                </form>
<!-- No logro que salga este mensaje en caso de error en la contraseña -->                
                <c:if test="${param.error}">
               		<div class="alert alert-danger" role="alert">
               		       El usuario o la contraseña son incorrectos.
               		</div>
               	</c:if>
               	<c:if test="${param.logout}">
               		<div class="alert alert-success" role="alert">
               		       Ha cerrado la sesión correctamente.
               		</div>
               	</c:if>
            </div>
        </div>
    </div>
</body>
</html>