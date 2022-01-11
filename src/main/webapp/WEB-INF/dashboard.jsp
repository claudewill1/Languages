<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Languages</title>
</head>
<body>
<table class="table table-bordered table-dark table-striped">
	    <thead>
	        <tr>
	            <th>Name</th>
	            <th>Creator</th>
	            <th>Version</th>
	            <th>Actions</th>
	        </tr>
	    </thead>
	    <tbody>
	        <c:forEach items="${languages}" var="language">
	        <tr>
	            <td>${language.name}</td>
	            <td>${language.creator}</td>
	            <td>${language.currentVersion}</td>
	            <td>
	            	<a href="/show/${language.id}" class="btn btn-success">Show</a>
	            	<a href="/languages/${language.id}/edit" class="btn btn-primary">Edit</a>
	            	<a href="/languages/delete/${language.id}" class="btn btn-danger">Delete</a>
	            </td>
	        </tr>
	        </c:forEach>
	    </tbody>
	</table>
	<div class="border-top border-dark pt-3">
	
	<h2>Add New Language</h2>
	
		<form:form action="/languages/new" method="POST" modelAttribute="language">
		    <div class="form-group row mx-0">
		        <form:label class="col-sm-1 col-form-label" path="name">Name</form:label>
		        <div class="col-sm-4">
		        	<form:input class="form-control" path="name"/>
		        	<form:errors class="small" path="name"/>
		        </div>
		    </div>
		    <div class="form-group row mx-0">
		        <form:label class="col-sm-1 col-form-label" path="creator">Creator</form:label>
		        <div class="col-sm-4">
		        	<form:input class="form-control" path="creator"/>
		        	<form:errors class="small" path="creator"/>
		        </div>
		    </div>
		    <div class="form-group row mx-0">
		        <form:label class="col-sm-1 col-form-label" path="currentVersion">Version</form:label>
		        <div class="col-sm-4">
		        	<form:input class="form-control" path="currentVersion"/>
		        	<form:errors class="small" path="currentVersion"/>
		        </div>
		    </div>
		    <div class="form-group row mx-0">
		    	<div class="col-sm-4 offset-sm-1">
		    		<input class = "btn btn-success" type="submit" value="Submit"/>
		    	</div>	
		    </div>
	    
		</form:form>
	</div>
</body>
</html>