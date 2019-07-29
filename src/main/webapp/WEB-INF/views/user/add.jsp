<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar usuário</title>
<spring:url var="css" value="/static/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${css }">
</head>
<body>

	<div class="container">
		<h1>Cadastro de usuarios</h1>
		<hr>
		<div>
			<spring:url value="/usuario/todos" var="home"></spring:url>
			<a class="btn btn-default" href="${home }">Home</a>
		</div>
		<hr>
		<div>
			<spring:url
				value="${usuario.id == null ? '/usuario/save' : '/usuario/update'}"
				var="save"></spring:url>
			<form:form modelAttribute="usuario" action="${save }" method="post">
				<form:hidden path="id"></form:hidden>
				<div class="form-group">
					<label for="nome">Nome:</label>
					<form:input path="nome" class="form-control" />
				</div>
				<div class="form-group">
					<label for="sobrenome">Sobrenome:</label>
					<form:input path="sobrenome" class="form-control" />
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">Confirmar</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>