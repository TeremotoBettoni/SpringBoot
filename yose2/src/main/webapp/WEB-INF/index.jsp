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
        /*Vista Inicial*/
            #vistaInicial {
                background-color: black;
            }

            .textoInicio {
                color: white;
                position: relative;
                text-align: center;
                width: 220px;
            }

            #texto1 {
                margin-top: 20px;
            }

            #bg-image {
                width: 100%;
                padding: 20px 0px;
            }
        /*termino Vista inicial*/
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
        /* Estilo Sobre nuestro equipo */
        @import url(//fonts.googleapis.com/css?family=Montserrat:300,500);

        .team4 {
            font-family: "Montserrat", sans-serif;
            color: white;
            font-weight: 300;
        }

        .team4 h1,
        .team4 h2,
        .team4 h3,
        .team4 h4,
        .team4 h5,
        .team4 h6 {
            color: white;
        }

        .team4 .font-weight-medium {
            font-weight: 500;
        }

        .team4 h5 {
            line-height: 22px;
            font-size: 18px;
        }

        .team4 .subtitle {
            color: #8d97ad;
            line-height: 24px;
            font-size: 13px;
        }

        .team4 ul li a {
            color: #8d97ad;
            padding-right: 15px;
            -webkit-transition: 0.1s ease-in;
            -o-transition: 0.1s ease-in;
            transition: 0.1s ease-in;
        }
        .img-hover-zoom img {
		  transition: transform .5s ease;
		}
		
		
		.img-hover-zoom:hover img {
		
		    transform: scale(1.2)
		    
		}
		.img-hover-zoom img {
		    filter: grayscale(100%);
		    -webkit-filter: grayscale(100%);
		}
		
		img:hover {
		    filter: none;
		    -webkit-filter: grayscale(0);
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
		                <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Acerca de</a></li>
		                <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Nuestro Equipo</a></li>
		                <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Funciones</a></li>
		                <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Contacto</a></li>
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
    	<!--Seccion de vista inicial-->
        <div class="container-fluid text-center" id="vistaInicial">
                <div class="row justify-content-around">
                    <div class="col align-self-start">
                        <h2 id="texto1" class="textoInicio">Red de aprendizaje colaborativo</h2>
                    </div>
                    <div class="col align-self-center">
                        <h4 id="texto2" class="textoInicio">Aprendemos y crecemos juntos, apoyándonos los unos a los
                            otros</h4>
                    </div>
                    <div class="col-4">
                        <img src="../assets/img/YoseBlanco.png" alt="Logo YoSe" id="bg-image">
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid"> <!--Seccion de vista carrusel-->
            <div class="row">
                    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions"     data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions"     data-bs-slide-to="3" aria-label="Slide 4"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="5" aria-label="Slide 6"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="../assets/img/1.png" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                            <h2 class="sombra-texto">Conexiones</h2>
                            <h4>Añade detalles respecto a tu rubro de trabajo y crea conexiones.</h4>
                            </div>
                        </div>
                        <div class="carousel-item">
                        <img src="../assets/img/2.png" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="sombra-texto">Registrate</h2>
                            <h4>Añade detalles respecto a tu
                                rubro de trabajo y crea conexiones.</h4>
                        </div>
                        </div>
                        <div class="carousel-item">
                            <img src="../assets/img/3.png" class="d-block w-100 sombra-imagen" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                            <h2 class="sombra-texto">Crea una pregunta pública</h2>
                            <h4>¿Tienes una consulta? Haz una pregunta 
                                a la comunidad de expertos para que te
                                puedan ayudar.</h4>
                            </div>
                        </div>
                        <div class="carousel-item active">
                            <img src="../assets/img/4.png" class="d-block w-100 sombra-imagen" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                            <h2 class="sombra-texto">Ingresa a las categorías de consultas</h2>
                            <h4>Ingresa a las consultas que otros usuarios han iniciado. ¡Se el primero en responder!</h4>
                            </div>
                        </div>
                        <div class="carousel-item">
                        <img src="../assets/img/5.png" class="d-block w-100 sombra-imagen" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="sombra-texto">Guarda referencias de informacion util </h2>
                            <h4>Si algun usuario comparte información, metodologias, o investigaciones, podras guardarlo para futuras referencias </h4>
                        </div>
                        </div>
                        <div class="carousel-item">
                            <img src="../assets/img/6.png" class="d-block w-100 sombra-imagen" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                            <h2 class="sombra-texto">Comparte tus colaboraciones</h2>
                            <h4>Si algun usuario comparte información, metodologias, o investigaciones, podras guardarlo para futuras referencias </h4>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
        <div class="container"> <!--Seccion de vista nuestro equipo-->
            <div class="row">
                <div class="row">
                    <div class="py-5 team4">
                        <div class="container">
                            <div class="row justify-content-center mb-4">
                                <div class="col-md-7 text-center">
                                    <h1 class="mb-3"><b>Sobre nuestro equipo</b></h1>

                                </div>
                            </div>
                            <div class="row">
                                <!-- columna  -->
                                <div class="col-lg-3 mb-4">
                                    <!-- Row -->
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="img-hover-zoom">
                                            <img src="https://i.postimg.cc/vBMgYKZk/descarga.png" alt="Foto"
                                                class="img-fluid rounded-circle" id="Foto"/>
                                            </div>
                                        </div>
                                        <div class="col-md-12 text-center">
                                            <div class="pt-2">
                                                <h5 class="mt-4 font-weight-medium mb-0">Carlos Ancapi</h5>
                                                <h6 class="subtitle mb-3">Back End</h6>

                                                <li class="list-inline-item">

                                                    
                                                <li class="list-inline-item"><a href="https://www.linkedin.com/in/carlos-ancapi-espinoza-657b5322a/"
                                                        target="_blank">
                                                        <img src="assets/img/linkedin.png" width="40px">
                                                <li class="list-inline-item"><a href="https://github.com/CarlosAncapi"
                                                        target="_blank">
                                                        <img src="assets/img/github.png" width="40px">
                                                <li class="list-inline-item"><a href="#"
                                                        class="text-decoration-none d-block"><i
                                                            class="icon-social-behance"></i></a></li>

                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- Row -->
                                </div>
                                <!-- column  -->
                                <!-- column  -->
                                <div class="col-lg-3 mb-4">
                                    <!-- Row -->
                                    <div class="row" id="SobreNosotros">
                                        <div class="col-md-12">
                                            <div class="img-hover-zoom">
                                            <img src="https://i.postimg.cc/XYdYrgmb/Screenshot-85.png" alt="wrapkit"
                                                class="img-fluid rounded-circle" id="Nosotros" />
                                            </div>
                                        </div>
                                        <div class="col-md-12 text-center">
                                            <div class="pt-2">
                                                <h5 class="mt-4 font-weight-medium mb-0">Maria Teresa Bettoni</h5>
                                                <h6 class="subtitle mb-3">Product Owner</h6>

                                                <li class="list-inline-item">


                                                    <li class="list-inline-item"><a  href="https://www.linkedin.com/in/maria-teresa-bettoni-ramos-26206713b/"
                                                            target="_blank">
                                                            <img src="assets/img/linkedin.png" width="40px">
                                                    <li class="list-inline-item"><a  href="https://github.com/TeremotoBettoni"
                                                            target="_blank">
                                                            <img src="assets/img/github.png" width="40px">
                                                    <li class="list-inline-item"><a 
                                                            class="text-decoration-none d-block"><i
                                                                class="icon-social-behance"></i></a></li>
    
                                                    </a>
    
                                                </div>
                                            </div>
                                        </div>
                                    <!-- Row -->
                                </div>
                                <!-- column  -->
                                <!-- column  -->
                                <div class="col-lg-3 mb-4">
                                    <!-- Row -->
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="img-hover-zoom">
                                            <img src="https://i.postimg.cc/zX1J9h32/1670892743251.jpg" alt="wrapkit"
                                                class="img-fluid rounded-circle" />
                                            </div>
                                        </div>
                                        <div class="col-md-12 text-center">
                                            <div class="pt-2">
                                                <h5 class="mt-4 font-weight-medium mb-0">Michel Espinoza</h5>
                                                <h6 class="subtitle mb-3">Front End</h6>
                                                <li class="list-inline-item">


                                                    <li class="list-inline-item"><a  href="https://www.linkedin.com/in/michel-espinoza-587138258/"
                                                            target="_blank">
                                                            <img src="assets/img/linkedin.png" width="40px">
                                                    <li class="list-inline-item"><a  href="https://github.com/MichelGeneration"
                                                            target="_blank">
                                                            <img src="assets/img/github.png" width="40px">
                                                    <li class="list-inline-item"><a 
                                                            class="text-decoration-none d-block"><i
                                                                class="icon-social-behance"></i></a></li>
    
                                                    </a>
    
                                                </div>
                                            </div>
                                        </div>
                                    <!-- Row -->
                                </div>
                                <!-- column  -->
                                <!-- column  -->
                                <div class="col-lg-3 mb-4">
                                    <!-- Row -->
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="img-hover-zoom">
                                            <img src="https://i.postimg.cc/T1v6v825/Ivan.jpg" alt="wrapkit"
                                                class="img-fluid rounded-circle" />
                                            </div>
                                        </div>
                                        <div class="col-md-12 text-center">
                                            <div class="pt-2">
                                                <h5 class="mt-4 font-weight-medium mb-0">Iván Zapata</h5>
                                                <h6 class="subtitle mb-3">Scrum Master</h6>
                                                <li class="list-inline-item">


                                                    <li class="list-inline-item"><a  href="https://www.linkedin.com/in/ivan-zapata-p/"
                                                            target="_blank">
                                                            <img src="assets/img/linkedin.png" width="40px">
                                                    <li class="list-inline-item"><a  href="https://github.com/littlesonik"
                                                            target="_blank">
                                                            <img src="assets/img/github.png" width="40px">
                                                    <li class="list-inline-item"><a 
                                                            class="text-decoration-none d-block"><i
                                                                class="icon-social-behance"></i></a></li>
    
                                                    </a>
    
                                                </div>
                                            </div>
                                        </div>
                                    <!-- Row -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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