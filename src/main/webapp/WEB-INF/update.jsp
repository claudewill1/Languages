<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title><c:out value="${language.name}"/></title>
</head>
<body>
<h1>Edit Language</h1>
	<div class="container">
		<div id="nav">
			<div>
				
				<a href="/languages">Dashboard</a>
			</div>
		</div>
		<div id="form">
		<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
				<div id="name" class="form-group row mx-0">
					<form:label path="name">Name:</form:label>
					<form:errors path="name"/>
					<form:input path="name"/>
				</div>
				<div id="creator" class="form-group row mx-0">
					<form:label path="creator">Creator:</form:label>
					<form:errors path="creator"/>
					<form:input path="creator"/>
				</div>
				<div id="currentVersion" class="form-group row mx-0">
					<form:label path="currentVersion">Version:</form:label>
					<form:errors path="currentVersion"/>
					<form:input path="currentVersion"/>
				</div>
				<div class="form-group row mx-0">
					<div class="col-sm-1 offset-sm-1">
						<input class="btn btn-primary" type="submit" value="Submit"/>
					</div>
					
					
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>