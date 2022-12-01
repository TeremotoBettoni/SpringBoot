<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="headers.css" rel="stylesheet">
    <title>Registro YoSé!</title>
</head>
<body>
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="table" viewBox="0 0 16 16">
            <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
        </symbol>
        
    </svg>
    <header class="p-3 text-bg-dark">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
            </a>
            
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="#" class="nav-link px-2 text-secondary">Inicio</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Acerca de</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Nuestro Equipo</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Funciones</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Contacto</a></li>
            </ul>
    
            <div class="text-end">
                <button type="button" class="btn btn-outline-light me-2">Login</button>
                <button type="button" class="btn btn-warning">Registro</button>
            </div>
        </div>
        </div>
    </header>

    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <form>
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre:</label>
                        <input type="text" class="form-control" id="nombre">
                    </div>
                    <div class="mb-3">
                        <label for="apellido" class="form-label"></label>Apellido:</label>
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
                    <button type="button" class="btn btn-outline-warning">Registrar</button>
                </form>
                
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>