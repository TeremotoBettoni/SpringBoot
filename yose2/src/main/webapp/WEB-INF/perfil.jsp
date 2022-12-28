<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<title>Perfil Usuario</title>
	
	<style>
        #fondo {
            background-color: rgb(29, 34, 49);
        }
        
        .letras {
            color: white;
        }

        .logo {
            display: block;
            margin: auto;
            padding-top: 2%;
            width: 60px;

        }

        #myBtn {
            right: 30px;
            background-color: #FFAC31;
            /* Set a background color */
            color: black;
            /* Text color */
            cursor: pointer;
            border-radius: 10px;
        }

        .cartacuenta {
            margin: 0 0 1rem 0;
            padding-bottom: 1rem;
            text-align: center;
        }

        .cartacuenta .fotoperfil {

            width: 90px;
            height: 90px;
            -webkit-border-radius: 100px;
            -moz-border-radius: 100px;
            border-radius: 100px;
        }

        .cartaeditarperfil {
            background: #ffffff;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            border: 0;
            margin-bottom: 1rem;
        }

        .cartaeditarperfil .user-profile {
            margin: 0 0 1rem 0;
            padding-bottom: 1rem;
            text-align: center;
        }

        .cartaeditarperfil .user-profile .user-avatar {
            margin: 0 0 1rem 0;
        }

        .cartaeditarperfil .user-profile .user-avatar img {
            width: 90px;
            height: 90px;
            -webkit-border-radius: 100px;
            -moz-border-radius: 100px;
            border-radius: 100px;
        }

        .cartaeditarperfil .user-profile h5.user-name {
            margin: 0 0 0.5rem 0;
        }

        .cartaeditarperfil .user-profile h6.user-nick {
            margin: 0;
            font-size: 0.8rem;
            font-weight: 400;
            color: #9fa8b9;
        }


        .form-control {
            border: 1px solid #cfd1d8;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            border-radius: 2px;
            font-size: .825rem;
            background: #ffffff;
            color: #2e323c;
        }

        .card {
            background: #ffffff;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            border: 0;
            margin-bottom: 1rem;
            margin-top: 1rem;
        }
        
        #cajacambiarfoto{
			float: left;
			width: 214px;
			height: 366px;
		}
		.sumbit{
		    background-color:#FFAC31;
		    color:black
		}
    </style>
</head>
<body id="fondo">
	<header>
        <nav class="navbar navbar-expand-lg bg-nav">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="../assets/img/yose.png" alt="Logo" width="40" class="d-inline-block align-text-top">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/home">
                                <button type="button" class="btn btn-outline-warning">Inicio</button>
                            </a>
                        </li>
                        <li class="nav-link dropdown-toggle">
                            <form action="/home/categoria" method="post">
                                <select name="categoriaSeleccionada" id="categoriaSeleccionada" class="btn btn-outline-warning">
                                    <option value= "0" selected>Categorías</option>
                                    <c:forEach var="categoria" items="${listaCategorias}">
                                    <option value="${categoria.id}">${categoria.detalleCategoria}</option>
                                    </c:forEach>
                                </select>
                            <button type="submit" class="btn btn-outline-warning">Filtrar</button>
                            </form>
                        </li>
                    </ul>
                    <form action="/buscar" method="post" class="d-flex" role="search">
                        <input name="palabraClave" value="${palabraClave}" id="palabraClave" class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search" required>
                        <input class="btn btn-outline-warning" type="submit" value= "Buscar">
                    </form>
                    <ul class="navbar-nav mb-2 mb-lg-0 mx-2">
                        <li class="nav-item dropdown">
                            <a class="btn btn-warning" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                                <i class="fa fa-user" aria-hidden="true"></i><c:out value="${usuarioNombre}"></c:out>
                            </a>
                                
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Perfil Usuario</a></li>
                                <li><a class="dropdown-item" href="#">Configuración</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="/registro/logout">Cerrar sesión</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!--Editar Perfil-->
    <main>
        <div class="container">
            <div class="row gutters">
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="cartaeditarperfil">
                                <div class="user-profile">
                                    <div class="user-avatar">
                                        <img src="https://picsum.photos/50/50"
                                            alt="Maxwell Admin">
                                    </div>
                                    <h5 class="user-name">Michel Espinoza</h5>
                                    <h6 class="user-nick">@Mespinoza</h6>
                                </div>
                                <div class="d-grid gap-2">
                                <button type="button" id="submit" name="submit"
                                            class="btn btn-inverse btn-warning">Editar foto de perfil</button>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12"><br>
                                    <h6 class="mb-2 text-primary">Detalles personales</h6>
                                </div><br><br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12"><br>
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control" id="nombre"
                                            placeholder="Ingresa nombre">
                                    </div>
                                </div><br><br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12"><br>
                                    <div class="form-group">
                                        <label for="apellido">Apellido</label>
                                        <input type="text" class="form-control" id="apellido"
                                            placeholder="Inserte apellido">
                                    </div>
                                </div><br><br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12"><br>
                                    <div class="form-group">
                                        <label for="pais">País</label>
                                        <input type="text" class="form-control" id="pais"
                                            placeholder="Ingresa País">
                                    </div>
                                </div><br><br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12"><br>
                                    <div class="form-group">
                                        <label for="ciudad">Ciudad</label>
                                        <input type="text" class="form-control" id="ciudad" placeholder="Ingrese ciudad">
                                    </div>
                                </div>
                            </div><br><br>
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12"><br>
                                    <h6 class="mt-3 mb-2 text-primary">Detalles profesionales y académicos</h6>
                                </div><br><br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12"><br>
                                    <div class="form-group">
                                        <label for="intereses">Intereses</label>
                                        <input type="name" class="form-control" id="intereses" placeholder="Agregar intereses">
                                    </div>
                                </div><br><br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12"><br>
                                    <div class="form-group">
                                        <label for="educacion">Educación</label>
                                        <input type="text" class="form-control" id="educacion" placeholder="Ingrese estudios">
                                    </div>
                                </div><br><br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12"><br>
                                    <div class="form-group">
                                        <label for="profesion">Profesión</label>
                                        <input type="text" class="form-control" id="profesion" placeholder="Ingresa profesión">
                                    </div>
                                </div><br><br>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12"><br>
                                    <div class="form-group">
                                        <label for="idioma">Idioma</label>
                                        <input type="text" class="form-control" id="idioma" placeholder="Ingrese idioma">
                                    </div>
                                </div>
                            </div><br><br>
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12"><br>
                                    <div class="text-right">    
                                        <button type="button" id="submit" name="submit"
                                            class="btn btn-warning">Guardar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!--Fin Editar Perfil-->
    <footer class="text-center text-lg-start" id="fondoHF">
        <div class="container-fluid">
                <img src="../assets/img/LogoYoSe.png" class="logo" alt="LogoYoSe" width="40">
                <div class="container d-flex justify-content-center py-2">
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
                    
                </div>
            <!-- Copyright -->
        
    </footer>
​

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>
</html>