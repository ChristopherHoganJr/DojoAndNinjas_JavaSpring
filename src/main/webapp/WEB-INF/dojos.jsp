<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
    
<meta charset="UTF-8">
<title>Dojos</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>New Dojo</h1>
				<form:form action="/dojos" method="post" modelAttribute="dojo">
					<div class="container">
						<form:errors style="color: red" path="*" />
					</div>
					<p>
						<form:label path="name">Name:</form:label>
						<form:input path="name" />
					</p>
					<input type="submit" value="Create" />
				</form:form>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col">
				<h2>List of current dojos</h2>
				<ul>
					<c:forEach var="dojo" items="${allDojos}">
						<li><a href="/dojos/<c:out value="${dojo.id}" />"> <c:out
									value="${dojo.name}" />
						</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<a href="/ninjas/new">Add a ninja</a>
			</div>
		</div>
	</div>
</body>
</html>

