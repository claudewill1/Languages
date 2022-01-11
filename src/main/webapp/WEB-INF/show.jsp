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
	<div id="container">
		<div id="nav">
			<a href="/languages">Dashboard</a>
		</div>
		<div id="content">
			<h4><c:out value="${language.name}"/></h4>
			<h4><c:out value="${language.creator}"/></h4>
			<h4><c:out value="${language.currentVersion}"/></h4>
			
			<a href="/languages/${language.id}/edit">Edit</a>
			<form action="languages/delete/${language.id}" method="post">
				<input type="hidden" name="_method" value="delete">
				<input type="submit" value="Delete">
			</form>
		</div>
	</div>
</body>
</html>