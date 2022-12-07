<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Login</title>
    <style>
        #fondo{
            background-color: rgb(29, 34, 49);
        }
        #letras{
            color: white;
        }
        .alineado{
            align-items: center;
        }
    </style>
</head>
<body>
    <main id="fondo">
        <div class="container">
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
            <div class="row">
                <div class="col-md-3 my-5">
                    <form>
                        <div class="mb-3">
                            <label for="email" class="form-label" id="letras">Correo:</label>
                            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Ingrese correo">
                        </div>
                        <div class="mb-3">
                            <label for="pass1" class="form-label" id="letras">Contraseña:</label>
                            <input type="password" class="form-control" id="pass1" placeholder="Ingrese contraseña">
                        </div>
                        <div class="form-check form-check-reverse">
                            <input class="form-check-input" type="checkbox" value="Recordar" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault" id="letras">Recordar contraseña</label>
                        </div>
                        <div class="d-grid gap-2 mt-3">
                            <button type="submit" class="btn btn-outline-warning">INGRESAR</button>
                        </div>
                        <br>
                        <div class="text-center">
                            <a href="" id="letras">Recuperar tu contraseña</a>
                        </div>
                        
                        
                    </form>
                </div>
                <div class="col-1">
                    
                </div>
                <div class="col-md-8">
                    <div class="ratio ratio-16x9 mx-5 mt-2">
                        <iframe src="assets/img/YO SE!.mp4" title="Video" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>