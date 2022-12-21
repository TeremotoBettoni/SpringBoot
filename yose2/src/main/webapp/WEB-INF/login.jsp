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
        #letra{
            color: white !important;
        }
        .yose img{
            width: 10px;
            height: 10px;
        }
        .fondoHF{
            background-color:#1D2231;
        }
        .logo{
            display: block;
            margin: auto;
            padding-top: 2%;
            width: 60px;
        }
        #myBtn {
            right: 30px;
            background-color:#FFAC31; /* Set a background color */
            color: black; /* Text color */
            cursor: pointer;
            border-radius: 10px;
        }
        
        #myBtn:hover {
            background-color: #b16f0c; /* Add a dark-grey background on hover */
        }
    </style>
</head>
<body id="fondo">
	
	<header class="p-3 text-bg-dark">
		<nav class="navbar navbar-expand-lg">
	        <div class="container-fluid">
	            <a href="/" class="navbar-brand">
	                <img src="../assets/img/yose.png" alt="yose" width="40">
	            </a>
	              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" style="background-color: #FFac31;">
				      <span class="navbar-toggler-icon"></span>
				  </button>
	            <div class="collapse navbar-collapse" id="navbarSupportedContent">
		            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		                <li class="nav-item"><a href="/" class="nav-link px-2 text-secondary">Inicio</a></li>
		                <li class="nav-item"><a href="/#AcercaDe" class="nav-link px-2 text-white">Acerca de</a></li>
		                <li class="nav-item"><a href="/#Funciones" class="nav-link px-2 text-white">Funciones</a></li>
		                <li class="nav-item"><a href="/#NuestroEquipo" class="nav-link px-2 text-white">Nuestro Equipo</a></li>
		                <li class="nav-item"><a href="/#Contacto" class="nav-link px-2 text-white">Contacto</a></li>
		            </ul>
		            
		            <div class="d-flex">
		            	<a class="btn btn-outline-light me-2" href="/registro/login" role="button">Ingreso</a>
		            	<a class="btn btn-warning" href="/registro/usuario" role="button">Registro</a>
		            </div>
	    		</div>
	        </div>
		</nav>
    </header>
    
    <main>
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
                    <form action="/registro/login" method="post">
                        <div class="mb-3">
                            <label for="email" class="form-label">Correo:</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Ingrese correo" required="required">
                        </div>
                        <div class="mb-3">
                            <label for="contraseña" class="form-label">Contraseña:</label>
                            <input type="password" class="form-control" id="contraseña" name="contraseña" placeholder="Ingrese contraseña" required="required">
                        </div>
                        <div class="form-check form-check-reverse">
                            <input class="form-check-input" type="checkbox" value="Recordar" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault" id="letra">Recordar contraseña</label>
                        </div>
                        <div class="d-grid gap-2 mt-3">
                            <button type="submit" class="btn btn-outline-warning">INGRESAR</button>
                        </div>
                        <br>
                        <div class="text-center">
                            <a href="" class="text-warning">Recuperar tu contraseña</a>
                        </div>
                    </form>
                </div>
                
                <div class="col-md-9">
                    <div class="ratio ratio-16x9 mx-5 mt-2">
                        <iframe src="../assets/img/YOSE!.mp4" title="Video" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer class="text-center text-lg-start" id="fondoHF">
        <div class="container-fluid">
                <img src="../assets/img/LogoYoSe.png" class="logo" alt="LogoYoSe" width="40">
                <div class="container d-flex justify-content-center py-5">
                    <a href="https://es-la.facebook.com/" target="_blank">
                        <img src="../assets/img/facebook.png" width="40" alt="facebook">
                    </a>
                    <a href="https://twitter.com/?lang=es" target="_blank">
                        <img src="../assets/img/twitter.png" width="40" alt="twitter">
                    </a>
                    <a href="https://www.instagram.com/" target="_blank">
                        <img src="../assets/img/instagram.png" width="40" alt="instagram">
                    </a>            
                    <a href="https://www.youtube.com/" target="_blank">
                        <img src="../assets/img/youtube.png" width="40" alt="youtube">
                    </a>
                </div>
        </div>
                <!-- Copyright -->
                <div class="text-center text-white p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                    © 2022 Copyright:
                    <a class="text-white" href="">YoSe.com</a>
                    <button onclick="topFunction()" id="myBtn" title="Go to top">Ir arriba</button>
                </div>
            <!-- Copyright -->
        
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>