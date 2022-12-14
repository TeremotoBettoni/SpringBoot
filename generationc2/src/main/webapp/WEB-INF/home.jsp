<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


    </head>
    <script>
	function filtraAuto() {
	  document.getElementById("autoSeleccionado").value = "${auto.id}";
	}
	</script>

<body>
    <div class="container">
        <!--navegacion -->
        <nav class="navbar navbar-expand-lg bg-nav">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                Dropdown
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled">Disabled</a>
                        </li>
                    </ul>
                    <form action="/home/nav" method="post" class="d-flex" role="search">
                        <input name="marca" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	                    <li class="nav-item dropdown">
	                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
	                                aria-expanded="false">
	                                <c:out value="${usuarioNombre}"></c:out>
	                            </a>
	                         <ul class="dropdown-menu">
	                        <li><a class="dropdown-item" href="#">Action</a></li>
	                        <li><a class="dropdown-item" href="#">Another action</a></li>
	                        <li>
	                            <hr class="dropdown-divider">
	                        </li>
	                        <li><a class="dropdown-item" href="/registro/logout">Logout</a></li>
	                    </ul>
	                    </li>
                    </ul>

                </div>
            </div>
        </nav><br>
        <!--contenido-->
        <div>
            <h1>Hello, world!</h1>
            <form action="/home" method="post">
                <label for="nombre" class="form-label">Autos</label>
            <select class="form-select" aria-label="Lista de autos" name="autoSeleccionado" id="autoSeleccionado">
			    <option value="0" selected>Seleccione su auto</option>
			    <c:forEach items="${listaSelectAutos}" var="auto"> <!-- agregamos de manera dinamica los elementos del select -->
                    <option value="${auto.id}">${auto.marca} - ${auto.color}</option>
                </c:forEach>
			</select>
            <br>
            <button type="submit" class="btn btn-outline-secondary">Filtrar Auto</button>
            
            </form>
            <br> <br>
            <h2>Lista de Autos</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Marca</th>
                        <th scope="col">Color</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">correo</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${autos}" var="auto">
                    	<tr>
	                    	<td><c:out value="${auto.id}"></c:out></td> <!-- en caso de no uso del forEach se usa el c:out para poder visualizar -->
	                    	<td><c:out value="${auto.marca}"></c:out></td>
	                    	<td>${auto.color}</td>
	                    	<td>${auto.usuario.nombre}</td>
	                    	<td>${auto.usuario.apellido}</td>
	                    	<td>${auto.usuario.email}</td>
                    	</tr>
                    </c:forEach>
                </tbody>
            </table>
            <br>
            
        </div>


    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>