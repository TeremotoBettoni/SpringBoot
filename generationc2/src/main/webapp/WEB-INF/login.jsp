<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
    	<h2>LogIn</h2>
    	<c:if test="${msgError!=null}">
    		<div class="alert alert-danger" role="alert">
		  	<c:out value="${msgError}"></c:out>
			</div>
    	</c:if>
    	<c:if test="${msgOk!=null}">
    		<div class="alert alert-success" role="alert">
		  	<c:out value="${msgOk}"></c:out>
			</div>
    	</c:if>
    	<div class="card">
		  <div class="card-body">
	    	<form action="/registro/login" method="post">
	    		<label for="correo" class="form-label">Email:</label>
			    <input type="email" class="form-control" id="correo" name="email" placeholder="Ingresa Email" required="required">
			    <br>

			    <label for="pass" class="form-label">Password:</label>
			    <input type="password" class="form-control" id="pass" name="pass" placeholder="Ingrese password" required="required">
			    <br>
	    	
	    		<input type="submit" class="btn btn-outline-primary btn-lg" value="Ingresar">
	    	</form>
	    	</div>
		</div>
    	
    </div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
       integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
       crossorigin="anonymous"></script>
</body>
</html>