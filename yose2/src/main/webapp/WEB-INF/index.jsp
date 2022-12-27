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
                
                width: 118rem;
                
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
                align-items: center;
                justify-content: center;
            }
        /*termino Vista inicial*/
        /* estilos footer*/
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
		/*Estilos carrucel*/
		* {
		    margin: 0;
		    padding: 0;
		}
		
		.bodyCarrusel {
		    padding: 20px;
		    user-select: none;
		    }
		
		[type=radio] {
		    display: none;
		}
		
		#slider {
		    height: 35vw;
		    position: relative;
		    perspective: 1000px;
		    transform-style: preserve-3d;
		}
		
		#slider label {
		    margin: auto;
		    width: 60%;
		    height: 100%;
		    border-radius: 4px;
		    position: absolute;
		    left: 0; right: 0;
		    cursor: pointer;
		    transition: transform 0.4s ease;
		}
		
		#s1:checked ~ #slide4, #s2:checked ~ #slide5,
		#s3:checked ~ #slide1, #s4:checked ~ #slide2,
		#s5:checked ~ #slide3 {
		    box-shadow: 0 1px 4px 0 rgba(0,0,0,.37);
		    transform: translate3d(-30%,0,-200px);
		}
		
		#s1:checked ~ #slide5, #s2:checked ~ #slide1,
		#s3:checked ~ #slide2, #s4:checked ~ #slide3,
		#s5:checked ~ #slide4 {
		    box-shadow: 0 6px 10px 0 rgba(0,0,0,.3), 0 2px 2px 0 rgba(0,0,0,.2);
		    transform: translate3d(-15%,0,-100px);
		}
		
		#s1:checked ~ #slide1, #s2:checked ~ #slide2,
		#s3:checked ~ #slide3, #s4:checked ~ #slide4,
		#s5:checked ~ #slide5 {
		    box-shadow: 0 13px 25px 0 rgba(0,0,0,.3), 0 11px 7px 0 rgba(0,0,0,.19);
		    transform: translate3d(0,0,0);
		}
		
		#s1:checked ~ #slide2, #s2:checked ~ #slide3,
		#s3:checked ~ #slide4, #s4:checked ~ #slide5,
		#s5:checked ~ #slide1 {
		    box-shadow: 0 6px 10px 0 rgba(0,0,0,.3), 0 2px 2px 0 rgba(0,0,0,.2);
		    transform: translate3d(15%,0,-100px);
		}
		
		#s1:checked ~ #slide3, #s2:checked ~ #slide4,
		#s3:checked ~ #slide5, #s4:checked ~ #slide1,
		#s5:checked ~ #slide2 {
		    box-shadow: 0 1px 4px 0 rgba(0,0,0,.37);
		    transform: translate3d(30%,0,-200px);
		}
		
		.color_textito{
		    color: white;
		}
		.color-de-fondo{
		    background-color: #1D2231;
		}
		.centrar-texto-carru{
		    text-align: center;
		    position: absolute;
		    top: 10px;
		    left: 10px;
		    position: absolute;
		    top: 80%;
		    left: 50%;
		    transform: translate(-50%, -50%);
		    
		}
		/*Scroll para  redireccionar desde el header a las secciones*/
		:root {
		  scroll-behavior: smooth;
		}
		
		body {
		    margin: 1rem;
		}
		
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
		
		.stt:hover {
		    transform: scale(1.2)
		}
		
		.stt:focus {
		  opacity: 0.9;
		}
		
		.stt:active {
		  opacity: 1;
		}
		/*seccion de estilo de acerca de*/
		.video-acerca-de{
			margin: 150px;
		    text-align: center;
		    color:white;
		    align-items: center;
		    justify-content: center;  
		}
		.videoAcercade{
		    align-items: center;
		    justify-content: center;
		    
		}
		​
		.ratio-16x9 {
		  @include media-breakpoint-up(md) {
		    --bs-aspect-ratio: 50%; // 2x1
		 }
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
		                <li class="nav-item"><a href="#AcercaDe" class="nav-link px-2 text-white">Acerca de</a></li>
		                <li class="nav-item"><a href="#Funciones" class="nav-link px-2 text-white">Funciones</a></li>
		                <li class="nav-item"><a href="#NuestroEquipo" class="nav-link px-2 text-white">Nuestro Equipo</a></li>
		                <li class="nav-item"><a href="#Contacto" class="nav-link px-2 text-white">Contacto</a></li>
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
                <div class="row" style="display: flex; justify-content: center; align-items: center;">
                    <div class="col-4">
                    	<h2 id="texto1" class="textoInicio">BIENVENIDO A YoSé!</h2>
                        <h3 id="texto1" class="textoInicio">Red de aprendizaje colaborativo</h3>
                    </div>
                    <div class="col-4">
                        <img src="../assets/img/Indexfotoo.png" alt="Logo YoSe" id="bg-image">
                    </div>
                </div>
            </div>
        </div>
        <br><br>
        
        <div class="video-acerca-de row" id="AcercaDe">
	        <div class="col-6"> <!--Seccion de Acerca de-->
		        <h1>Visión y misión de ¡YoSé!</h1>
		        <br>
		        <h3>Esperamos generar un espacio en el que se realicen conexiones entre personas 
		            que deseen compartir información o consultar por ella.</h3>
		        <br>
		        <h3>
		            Poder encontrar información de interés en
		            materias específicas, o tambien resolver 
		            dudas, fomentando así el espíritu de compartir y recibir conocimiento.
		        </h3>
		        <br> 
		    </div>
		    <div class="col-6">
		        <iframe width="854" height="480" src="https://www.youtube.com/embed/Qdgrmb3UnYQ" title="YouTube video player" frameborder="0" title="YouTube video" allowfullscreen></iframe>
		    </div>
        </div>
        
       <div class="row justify-content-center mb-4" id="Funciones">
       		<div class="col-md-7 text-center">
	           <div class="scroll-container">
	                <h1 class="mb-3" style="color: white"><b>Funciones</b></h1>
				</div>
            </div>
       </div>
        <div class="bodyCarrusel"> <!--Seccion de vista carrusel-->
			
			<section id="slider" >
			    <input type="radio" name="slider" id="s1">
			    <input type="radio" name="slider" id="s2">
			    <input type="radio" name="slider" id="s3" checked>
			    <input type="radio" name="slider" id="s4">
			    <input type="radio" name="slider" id="s5">
			
			    <label for="s1" id="slide1">
			        <img src="../assets/img/1.png" height="100%" width="100%">
			        <div class="color_textito centrar-texto-carru">
			            <h1>Conexiones</h1>
			            <h4>Crea vínculos con otros usuarios</h4> 
			            <h4>para compartir conocimiento.</h4>
			        </div>
			    </label>
			    <label for="s2" id="slide2">
			            <img src="../assets/img/3.png" height="100%" width="100%">
			            <div class="color_textito centrar-texto-carru">
			                <h1>¿Tienes una consulta?</h1>
			                <h4>Haz una pregunta a la comunidad de YoSé!</h4>
			            </div>
			    </label>
			    <label for="s3" id="slide3">
			            <img src="../assets/img/4.png" height="100%" width="100%">
			            <div class="color_textito centrar-texto-carru">
			                <h1>Filtra por categorías</h1>
			                <h4>Ve las públicaciones de otros usuarios</h4> 
			                <h4>¡Se el primero en responder!</h4>
			            </div>
			    </label>
			    <label for="s4" id="slide4">
			            <img src="../assets/img/5.png" height="100%" width="100%">
			            <div class="color_textito centrar-texto-carru">
			                <h1>Guarda información útil</h1>
			                <h4>Si otro usuario postea algo interesante</h4> 
			                <h4>guarda esa referencia para el futuro.</h4>
			            </div>
			    </label>
			    <label for="s5" id="slide5">
			            <img src="../assets/img/6.png" height="100%" width="100%">
			            <div class="color_textito centrar-texto-carru">
			                <h1>Comparte información</h1>
			                <h4>Aporta conocimiento a la comunidad.</h4> 
			                <h4>Si, YoSé!, comparto</h4>
			            </div>
			    </label>
			
			</label>
			</section>
        </div>
        <div class="container" id="NuestroEquipo"> <!--Seccion de vista nuestro equipo-->
            <div class="row">
                <div class="row">
                    <div class="py-5 team4">
                        <div class="container">
                            <div class="row justify-content-center mb-4">
                                <div class="col-md-7 text-center">
                                <div class="scroll-container">
                                
                                    <h1 class="mb-3"><b>Sobre nuestro equipo</b></h1>
								</div>
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
            
                <div class="col-md-4 my-5" >
                	<div class="scroll-container" id="Contacto">
                    <h3 style="color: white; margin-top: 15%;">
                        Si necesitas contactarnos para hacer alguna consulta 
                        o simplemente para dejar tu comentario, 
                        por favor sientete libre de hacerlo
                    </h3>
                    <h5 style="color: white; margin-left: 10px; margin-top: 4px;"><img src="assets/img/iconocorreo.png" alt="Iconoi Correo" style="width: 40px;"> yoselocomparto@gmail.com</h5>
                	</div>
             </div>
                <div class="col-md-4 my-5">
                    <div class="card text-center" style="background-color: #FFAC31;">
                        <div class="card-header">
                            CONTACTO
                        </div>
                        <div class="card-body">
                                <form>
                                    <div class="input-group">
                                        <input type="text" aria-label="First name" class="form-control" placeholder="Nombre">
                                    </div>
                                    <br>
                                    <div class="input-group">
                                        <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Email: name@example.com">
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
                    <a href='#' class="stt" title="Ir Arriba"></a>
                    <a class="text-white" href="">YoSé!.com</a>
                    <button onclick="topFunction()" id="myBtn" title="Go to top">Ir arriba</button>
                </div>
            <!-- Copyright -->
        
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>