<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>YoSe</title>
    <style>
        #fondo{
            background-color: rgb(29, 34, 49);
        }
        #inicio{
            position: relative;
            width: 100%;
            height: 700px;
            display: flex; 
            justify-content: space-between;
        }
        .textoInicio{
            color:white;
            position: relative;
        }
        #texto1{
            width: 260px;
            margin: 100px;
        }
        #texto2{
            width: 300px;
            margin: 100px;
            margin-top: 400px;
        }
        #bg-image{
            opacity: 0.6;
            position: absolute;
            object-fit: cover;
            width: 100%;
            height: -webkit-fill-available;
        }
        .letras{
            color: white;
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
        #fondoContacto{
            background-image: url("assets/img/pexels-pixabay-416947.jpg");
            opacity: 0.7;
        }

    </style>
</head>
<body id="fondo">
    <header class="p-3 text-bg-dark">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/home" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <img src="../assets/img/yose.png" alt="yose" width="40">
            </a>
            
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="#" class="nav-link px-2 text-secondary">Inicio</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Acerca de</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Nuestro Equipo</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Funciones</a></li>
                <li><a href="#" class="nav-link px-2 text-white">Contacto</a></li>
            </ul>
    
            <div class="text-end">
                <a class="btn btn-outline-light me-2" href="/registro/login" role="button">Ingreso</a>
                <a class="btn btn-warning" href="/registro/usuario" role="button">Registro</a>
            </div>
        </div>
        </div>
    </header>

    <main>
        <div class="container-fluid"> <!--Seccion de vista inicial-->
            <div id="inicio"> <!--Seccion de vista inicial-->
                <img src="../assets/img/Videopromocional.gif" alt="Logo Yose" id="bg-image" />
                <div class="col-md-3">
                    <h1 class="textoInicio" id= "texto1">Red de aprendizaje colaborativo</h1>
                </div>
                <div class="col-md-3">
                    <h2 class="textoInicio" id= "texto2">Aprendemos y crecemos juntos, apoyándonos los unos a los otros</h2>
                </div>
                
                
            </div>
        </div>
        <div class="container"> <!--Seccion de vista carrusel-->
            <div class="row">
                
            </div>
        </div>
        <div class="container"> <!--Seccion de vista nuestro equipo-->
            <div class="row">
                
            </div>
        </div>
        <div class="container-fluid" id="fondoContacto"> <!--Seccion de vista contacto-->
            <div class="row" style="display: flex; justify-content: center;">
                <div class="col-md-4 my-5">
                    <h3 style="color: white; margin-top: 15%;">
                        Si necesitas contactarnos para hacer alguna consulta 
                        o simplemente para dejar tu comentario, 
                        por favor sientete libre de hacerlo
                    </h3>
                    <h5 style="color: white; margin-left: 10px; margin-top: 4px;"><img src="assets/img/iconocorreo.png" alt="Iconoi Correo" style="width: 40px;"> yoselocomparto@gmail.com</h5>
                </div>
                <div class="col-md-4 my-5">
                    <div class="card text-center" style="background-color: #FFAC31;">
                        <div class="card-header">
                            CONTACTO
                        </div>
                        <div class="card-body">
                                <form>
                                    <div class="input-group">
                                        <span class="input-group-text">Nombre de contacto</span>
                                        <input type="text" aria-label="First name" class="form-control">
                                    </div>
                                    <br>
                                    <div class="input-group">
                                        <span class="input-group-text">Email</span>
                                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                                    </div>
                                    <div id="emailHelp" class="form-text">Nunca compartiremos su correo electrónico con nadie más.</div>
                                    <br>
                                    <div class="mb-3">
                                        <textarea class="form-control" rows="1" placeholder="Asunto"></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <textarea class="form-control" rows="3" placeholder="Mensaje"></textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label for="formFile" class="form-label"></label>
                                        <input class="form-control" type="file" id="formFile">
                                    </div>
                                    <a href="#" class="btn btn-dark">Enviar</a>
                                </form>
                        </div>
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