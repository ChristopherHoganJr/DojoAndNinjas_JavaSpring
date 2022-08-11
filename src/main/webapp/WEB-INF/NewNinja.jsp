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
<title>New Ninja</title>
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
				<h1>New Ninja</h1>
				<form:form action="/ninjas/new" method="post" modelAttribute="ninja">
					<div class="container">
						<form:errors style="color: red" path="*" />
					</div>
					<table class="table">
						<tbody>
							<tr>
								<td><form:label path="dojo">Dojo:</form:label></td>
								<td><form:select path="dojo">
										<c:forEach items="${allDojos}" var="dojo">
											<form:option value="${dojo.id}">
												<c:out value="${dojo.name}" />
											</form:option>
										</c:forEach>
									</form:select></td>
							</tr>
							<tr>
								<td><form:label path="first_name">First Name:</form:label></td>
								<td><form:input path="first_name" /></td>
							</tr>
							<tr>
								<td><form:label path="last_name">Last Name:</form:label></td>
								<td><form:input path="last_name" /></td>
							</tr>
							<tr>
								<td><form:label path="age">Age:</form:label></td>
								<td><form:input path="age" /></td>
							</tr>

							<tr>
								<td><input type="submit" value="Create" /></td>
							</tr>
						</tbody>
					</table>
				</form:form>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<a href="/">Home</a>
			</div>
		</div>
	</div>
	   
</body>
</html>

