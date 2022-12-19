<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--agregamos el jquery-->
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <!--agregamos el bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Home Yose!</title>
    <style>
        .mainCentral{
            display: flex;
            justify-content: center;
        }
        #fondo{
            background-color: rgb(29, 34, 49);
        }
        .container {
            background-color: #1D2231;
        }
        .h7 {
            font-size: 0.8rem;
        }
        .gedf-wrapper {
            margin-top: 0.97rem;
        }
        @media (min-width: 992px) {
            .gedf-main {
                padding-left: 4rem;
                padding-right: 4rem;
            }
            .gedf-card {
                margin-bottom: 2.77rem;
            }
        }
        /**Reset Bootstrap*/
        .dropdown-toggle::after {
            content: none;
            display: none;
        }
        .Carta {
            background-color: #1D2231;
        }
    </style>

</head>
<script>
	function filtraPosteo() {
	    document.getElementById("categoriaSeleccinada").value = "${posteo.id}";
	}
	</script>
<body id="fondo">
	
    <header>
        <nav class="navbar navbar-expand-lg bg-nav">
            <div class="container-fluid">
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
                            <a class="nav-link active" aria-current="page" href="#">
                            	<button type="button" class="btn btn-outline-warning">Inicio</button>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                            <button type="button" class="btn btn-outline-warning">Notificación</button>
                            </a>
                        </li>
                        <li class="nav-link dropdown-toggle">
                        	<select type="button" name="detalleCategoria" id="categoria" class="btn btn-outline-warning">
				                <option value= "0" selected>Categorías</option>
				                <c:forEach var="categoria" items="${listaCategorias}">
				                <option value="${categoria.id}">${categoria.detalleCategoria}</option>
				                </c:forEach>
				            </select>
                        </li>
                            
                    </ul>
                    <form action="/home/nav" method="post" class="d-flex" role="search">
                        <input name="marca" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-warning" type="submit">Buscar</button>
                    </form>
                    <ul class="navbar-nav mb-2 mb-lg-0 mx-2">
	                    <li class="nav-item dropdown">
	                    	<a class="btn btn-warning" href="#" role="button" data-bs-toggle="dropdown"
	                        aria-expanded="false">
	                            <img alt="icono perfil" src="assets/img/iconoPerfil.png" width="25"><c:out value="${usuarioNombre}"></c:out>
	                        </a>
	                            
	                        <ul class="dropdown-menu">
	                        <li><a class="dropdown-item" href="#">Perfil Usuario</a></li>
	                        <li><a class="dropdown-item" href="#">Configuración</a></li>
	                        <li>
	                            <hr class="dropdown-divider">
	                        </li>
	                        <li><a class="dropdown-item" href="/registro/logout">Cerar sesión</a></li>
	                    </ul>
	                    </li>
                    </ul>

                </div>
            </div>
        </nav>
    </header>
    
    <main>
        <img src="https://i.postimg.cc/MG83VMN8/Publicar.png" id=BotonPublicar type="img" class="btn" data-bs-toggle="modal"
        data-bs-target="#staticBackdrop" width="150px" style="margin-left: 15%;">
        <br>
        <div class="mainCentral">
            <div class="col-md-6 gedf-main">
                <!--- \\\\\\\Post-->
                <c:forEach items="${listaPosteos}" var="posteo">
                        <div class="card gedf-card" id="Carta">
                            
                                <div class="card-header"><!--Header de la card de posteo-->
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="mr-2"> <!--Aqui se muestra la foto de per4fil de quien publica-->
                                                <img class="rounded-circle" width="45" src="https://picsum.photos/50/50" alt="foto perfil">
                                            </div>
                                            
                                            <div class="ml-2"><!--Aqui se muestra los datos de usuario que realizon el posteo-->
                                                
                                                <div class="h5 text-muted">
                                                        
                                                        <c:out value="${posteo.usuario.nombre}"></c:out>
                                                        <c:out value="${posteo.usuario.apellido}"></c:out>
                                                
                                                </div>
                                            </div>
                                            <div class="ml-2"><!--Aqui se muestra los datos de categoría el posteo-->
                                                
                                                <div class="h5 text-muted" style="">
                                                        
                                                        <c:out value="${posteo.categoria.detalleCategoria}"></c:out>
                                                
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    
                            <div class="card-body">
                                <div class="card-link">
                                    <div class="card-title">
                                        <h5><c:out value="${posteo.titulo}"></c:out></h5>
                                    </div>
                                </div>
                                
                                <div class="card-text">
                                    <c:out value="${posteo.texto}"></c:out>
                                </div>
                                
                                <div class="card-text">
                                    <a href="${posteo.url}">
                                        <c:out value="${posteo.url}"></c:out>
                                    </a>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="#" class="card-link"><i class="fa fa-gittip"></i>Valoración</a>
                                <a href="#" class="card-link"><i class="fa fa-comment"></i>Commentarios</a>
                            </div>
                                
                    </div>
                </c:forEach>
            </div> 
            <div class="col-md-3 gedf-main">
                <div class="card" style="width: 18rem;">
                    <div style="display: flex; justify-content: center; align-items: center;">
                        <img  class="rounded-circle" width="200" src="https://picsum.photos/50/50" alt="foto perfil">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">
                            <c:out value="${posteo.usuario.nombre}"></c:out>
                            <c:out value="${posteo.usuario.apellido}"></c:out>
                        </h5>
                    </div>
                    <div class="card-body">
                        <a href="#" class="card-link text-muted"><img src="assets/img/iconoPerfil.png" width="20" alt="icono perfil"> Perfil</a>
                        <hr>
                        <a href="#" class="card-link text-muted"><span class="badge text-bg-secondary">4</span> Notificaciones</a>
                        <hr>
                        <a href="#" class="card-link text-muted"><img src="assets/img/iconoCarpeta.png" width="20" alt="icono Guardado"> Guardados</a>
                        <hr>
                        <a href="#" class="card-link text-muted"><img src="assets/img/iconoColegas.jpg" width="20" alt="icono Colegas"> Colegas</a>
                    </div>
                </div>
            </div>       	
        </div>       	
            
    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" role="dialog" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Crea una publicación</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!--- \\\\\\\Post-->
                <div class="card-body">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="posts" role="tabpanel"
                            aria-labelledby="posts-tab">
                            <form action="/home" method="post"> <!--introducimos la rura en la cual generara la accion-->
                                <div class="mb-3">
                                    <select name="detalleCategoria" id="categoria" class="form-select">
						                <option value= "0" selected>Categorías</option>
						                <c:forEach var="categoria" items="${listaCategorias}">
						                <option value="${categoria.id}">${categoria.detalleCategoria}</option>
						                </c:forEach>
						            </select>
                                </div>
                                <div class="mb-3">
                                    <label for="titulo" class="col-form-label">Título:</label>
                                    <input type="text" class="form-control" id="titulo" name="titulo">
                                </div>
                                <div class="mb-3">
                                    <label for="texto" class="col-form-label">Descripción:</label>
                                    <textarea class="form-control" id="texto" name="texto"></textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="url" class="col-form-label">URL:</label>
                                    <input type="text" class="form-control" id="url" name="url">
                                </div>
                                
			                    <div class="modal-footer">
			                        <button type="submit" class="btn btn-primary" href="/home">Publicar</button>
			                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
			                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
	</div>
	</div>
	</div>
    </main>

    <!--agregamos el js jquery-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>