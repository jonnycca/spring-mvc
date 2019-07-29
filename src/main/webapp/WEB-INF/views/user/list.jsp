<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Lista de usuários</title>
	<spring:url var="css" value="/static/css/bootstrap.css" />
	<link type="text/css" rel="stylesheet" href="${css }">
</head>
<body>
<div class="container">
	<h1>Lista de usuários</h1>
	<hr>
	<div>
		<spring:url value="/usuario/cadastro" var="cadastro"></spring:url>
		<a class="btn btn-default" href="${cadastro }">Novo usuário</a>
	</div>
	<hr>
	
	<div class="panel-sucess">
		<div class="panel-heading">
			<span> ${message == null ? '&nbsp;' : message }</span>
		</div>
	</div>
	
	
	<table class="table table-striped table-condensed">
		<thead>
		<tr>
			<th>ID</th>
			<th>NOME</th>
			<th>AÇÃO</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="usuario" items="${usuarios}">
			<tr>
				<td>${ usuario.id }</td>
				<td>${ usuario.nome }&nbsp;${ usuario.sobrenome }</td>
				<td>
					<spring:url value="/usuario/update/${usuario.id}" var="update"></spring:url>
					<a class="btn btn-info" href="${update}">Editar</a>
					<spring:url value="/usuario/delete/${usuario.id}" var="delete"></spring:url>
					<a class="btn btn-danger" href="${delete }">Excluir</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<hr>
</body>
</html>