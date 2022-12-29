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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
        /*Estilos desplegable de comentario*/       
        .stt {
		  position: fixed;
		  right: 1rem;
		  bottom: 1rem;
		  width: 3rem;
		  height: 3rem;
		  border-radius: 50%;
		  background: #FFAC31 url("data:image/svg+xml;utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 384 512'%3E%3Cpath fill='currentColor' d='M352 352c-8.188 0-16.38-3.125-22.62-9.375L192 205.3l-137.4 137.4c-12.5 12.5-32.75 12.5-45.25 0s-12.5-32.75 0-45.25l160-160c12.5-12.5 32.75-12.5 45.25 0l160 160c12.5 12.5 12.5 32.75 0 45.25C368.4 348.9 360.2 352 352 352z'%3E%3C/path%3E%3C/svg%3E") center no-repeat;
		  box-shadow: 0 0.25rem 0.5rem 0 gray;
		  opacity: 0.7;
		}
		
		#scrollComentario{
            height: 250px;
            overflow-x: hidden; /*para manejar todo lo que se desvorda del contenedor*/
            overflow-y: scroll;
            
        }
        #scrollComentario::-webkit-scrollbar {
            display: none;
        }
		
    </style>

</head>
<script>
	function filtraPosteo() {
    document.getElementById("categoriaSeleccionada").value = "${categoria.id}";
	}
	</script>
<body id="fondo">
	
    <header>
        <nav class="navbar navbar-expand-lg bg-nav">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="../assets/img/yose.png" alt="Logo" width="40" class="d-inline-block align-text-top">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation" style="background-color: #FFac31;">
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
                                <li><a class="dropdown-item" href="/home/perfil">Perfil Usuario</a></li>
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
    
    <main>
        <img src="https://i.postimg.cc/d1x98Y3Z/Group-45-Publi-1.png" id=BotonPublicar type="img" class="btn" data-bs-toggle="modal"
        data-bs-target="#staticBackdrop" width="200px" style="margin-left: 15%;">
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
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="card-link">
                                <div class="card-title">
                                    <h5><c:out value="${posteo.titulo}"></c:out></h5>
                                <div class="ml-2"><!--Aqui se muestra los datos de categoría el posteo-->
                                        <div class="h6 text-muted">
                                            <c:out value="Categoria: ${posteo.categoria.detalleCategoria}"></c:out>
                                            <c:out value="| Tipo de publicación: ${posteo.typePosteo.tipo}"></c:out>
                                        </div>
                                </div>
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
                        <div id="accordion">
                            <div class="card">
                                <div class="card-footer" id="headingOne">
                                    <a href="#" class="btn btn-light"><i class="fa fa-thumbs-o-up"><span class="badge text-bg-secondary"><c:out value="${posteo.valoracionesPosteos.size()}"></c:out></span></i>Valoración</a>
                                    <button class="btn btn-light" data-toggle="collapse" data-target="#collapseOne"
                                    aria-expanded="true" aria-controls="collapseOne" ><i class="fa fa-commenting-o" aria-hidden="true">
                                    <span class="badge text-bg-secondary"><c:out value="${posteo.comentarios.size()}"></c:out></span></i>
                                        Comentarios
                                    </button>
                                </div>
                                <!-- Vista de los comentarios al desplegarse -->
                                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <div class="coment-bottom bg-white p-2 px-4">
                                            <form action="/comentarios" method="post">
                                                <div class="d-flex flex-row add-comment-section mt-4 mb-4">
                                                    <img class="img-fluid img-responsive rounded-circle mr-2" src="https://picsum.photos/50/50" width="38">
                                                    <input type="text" class="form-control mr-3" placeholder="Añadir comentario" id="texto" name="texto">
                                                    <input type="hidden" name="posteo" value="${posteo.id}">
                                                    <button class="btn btn-primary" type="submit">Comentar</button>
                                                </div>
                                            </form>
                                            <div class="commented-section mt-2" >
                                            	<div id="scrollComentario">
	                                                <c:forEach items="${posteo.comentarios}" var="comentario">
	                                                    <div class="d-flex flex-row align-items-center commented-user">
	                                                        <img class="img-fluid img-responsive rounded-circle mr-2" src="https://picsum.photos/50/50" width="38">
	                                                        <h5 class="mr-2">
	                                                            <c:out value="${comentario.usuario.nombre}"></c:out>
	                                                            <c:out value="${comentario.usuario.apellido}"></c:out>
	                                                        </h5>
	                                                    </div>
	                                                    <div class="comment-text-sm">
	                                                        <c:out value="${comentario.texto}"></c:out>
	                                                    </div><br>
	                                                </c:forEach>
                                            	</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div> 
            <div class="col-md-3 gedf-main">
                <div class="card" style="width: 18rem; position: fixed;">
                    <div style="display: flex; justify-content: center; align-items: center; padding-top: 20px;">
                        <img  class="rounded-circle" width="200" src="https://picsum.photos/50/50" alt="foto perfil">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">
                            <c:out value="${posteo.usuario.nombre}"></c:out>
                            <c:out value="${posteo.usuario.apellido}"></c:out>
                        </h5>
                    </div>
                    <div class="card-body">
                        <a href="/home/perfil" class="card-link text-muted"><i class="fa fa-user" aria-hidden="true"></i> Perfil</a>
                        <hr>
                        <a href="#" class="card-link text-muted"><i class="fa fa-bell-o" aria-hidden="true"></i>Notificaciones</a>
                        <hr>
                        <a href="#" class="card-link text-muted"><i class="fa fa-bookmark-o" aria-hidden="true"></i> Guardados</a>
                        <hr>
                        <a href="#" class="card-link text-muted"><i class="fa fa-handshake-o" aria-hidden="true"></i> Colegas</a>
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
                                <div class="tab-pane fade show active" id="posts" role="tabpanel" aria-labelledby="posts-tab">
                                    <form action="/home" method="post"> <!--introducimos la rura en la cual generara la accion-->
                                        <!-- aqui empieza el select del tipo posteo -->
                                        <div class="mb-3">
		                                    <select name="tipoPosteo" id="tipoPosteo" class="form-select">
								                <option value= "0" selected>Tipo de publicacion</option>
								                <c:forEach var="typeposteo" items="${listaTipoPosteo}">
								                <option value="${typeposteo.id}">${typeposteo.tipo}</option>
								                </c:forEach>
								            </select>
		                                </div>
		                                <!-- aqui termina el select del tipo posteo -->
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
        <a href='#' class="stt" title="Ir Arriba"></a>
    </main>

    <!--agregamos el js jquery-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>