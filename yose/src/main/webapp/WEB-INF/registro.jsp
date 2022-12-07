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
    <link href="headers.css" rel="stylesheet">
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/footers/">
    <title>Registro YoSé!</title>
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
            font-size: 3.5rem;
            }
        }
        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }
        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }
        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }
        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }
        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }
        #video{
            display: inline-block; /*esto es para que se alineen por bloques uno al lado del otro*/
            vertical-align: top;/*esto es para que se alineen segun la linea superior*/
        }
    </style>
</head>
<body>

    <main>
        <div class="container">
        	<c:if test="${msgError!=null}">
	    		<div class="alert alert-danger" role="alert">
			  		<c:out value="${msgError}"></c:out>
				</div>
    		</c:if>
            <div class="row">
            
                <div class="col-md-3 mt-2">
                    <form>
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre:</label>
                            <input type="text" class="form-control" id="nombre">
                        </div>
                        <div class="mb-3">
                            <label for="apellido" class="form-label">Apellido:</label>
                            <input type="text" class="form-control" id="apellido">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Correo:</label>
                            <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
                            <div id="emailHelp" class="form-text">Nunca compartiremos su correo electrónico con nadie más.nadie más.</div>
                        </div>
                        <div class="mb-3">
                            <label for="pass1" class="form-label">Contraseña:</label>
                            <input type="password" class="form-control" id="pass1">
                        </div>
                        <div class="mb-3">
                            <label for="pass2" class="form-label">Confirmar Contraseña:</label>
                            <input type="password" class="form-control" id="pass2">
                            <div id="emailHelp" class="form-text">Debe ser la misma contraseña</div>
                        </div>
                        <button type="submit" class="btn btn-outline-warning">Registrar</button>
                    </form>
                    
                </div>
                <br>
                <div class="col-md-9">
                    <div class="ratio ratio-16x9 mx-5 mt-2">
                        <iframe src="assets/img/Video promocional.mp4" title="Video" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>