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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
    <style>
        #fondo{
            background-color: rgb(29, 34, 49);
        }
        /*Vista Inicial*/
        #vistaInicial {
            height: 700px;
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='2000' height='900' preserveAspectRatio='none' viewBox='0 0 2000 900'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1088%26quot%3b)' fill='none'%3e%3crect width='2000' height='900' x='0' y='0' fill='%230e2a47'%3e%3c/rect%3e%3cpath d='M942.9115674509108 547.0291209236652L801.4038582229026 498.3041091430973 799.0701951660548 734.9281788753933z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M738.085%2c734.159C807.953%2c738.12%2c887.021%2c736.043%2c925.645%2c677.688C967.149%2c614.982%2c954.663%2c531.125%2c914.583%2c467.499C877.065%2c407.941%2c808.475%2c379.745%2c738.085%2c379.941C668.08%2c380.136%2c597.169%2c407.221%2c563.279%2c468.476C530.248%2c528.179%2c546.566%2c601.321%2c584.069%2c658.321C617.781%2c709.559%2c676.849%2c730.687%2c738.085%2c734.159' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M1874.3517546712715 652.9428452986638L1885.1317911603744 550.3776493115207 1725.8939789351084 585.490192571438z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M1755.6696730401966 548.8469943623047L1827.7518603438118 703.4277438803736 2023.5818909691075 518.0140881659163z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M221.3626718618769 682.1175296109111L112.51602117261893 507.55651060525247 25.3335376024138 664.8378743890688z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M1890.109%2c903.321C1970.102%2c907.852%2c2052.081%2c868.607%2c2087.399%2c796.691C2119.905%2c730.502%2c2081.718%2c657.169%2c2041.277%2c595.508C2005.804%2c541.422%2c1954.597%2c500.872%2c1890.109%2c495.882C1815.003%2c490.071%2c1729.84%2c503.27%2c1692.155%2c568.496C1654.457%2c633.744%2c1689.72%2c711.472%2c1728.07%2c776.338C1765.501%2c839.65%2c1816.678%2c899.162%2c1890.109%2c903.321' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M866.6186027507184 789.5032121383304L996.0617713565072 582.350839870004 788.9093990881809 452.9076712642153 659.4662304823921 660.0600435325416z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M1487.8884651055703 626.1203136555961L1636.1577849893852 580.7898334481051 1494.0274047362414 381.0510937261281z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M861.8332659498453 509.5653089081597L788.0303074616319 632.3940584568604 910.8590570103325 706.1970169450739 984.662015498546 583.3682673963732z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M1461.2490563663584 90.9645920390546L1692.0429117199085 229.93906375393598 1700.2618618896788-5.420875027264145z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M655.403%2c90.232C684.643%2c90.269%2c706.593%2c65.488%2c719.384%2c39.194C730.548%2c16.243%2c726.781%2c-9.509%2c714.912%2c-32.103C701.945%2c-56.787%2c683.286%2c-82.729%2c655.403%2c-82.597C627.652%2c-82.466%2c609.735%2c-56.128%2c596.86%2c-31.545C585.13%2c-9.148%2c580.746%2c16.247%2c591.7%2c39.034C604.351%2c65.349%2c626.205%2c90.195%2c655.403%2c90.232' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M712.458%2c1079C783.156%2c1081.902%2c861.856%2c1069.013%2c897.249%2c1007.743C932.651%2c946.457%2c905.492%2c871.199%2c866.688%2c812.009C832.086%2c759.227%2c775.522%2c728.35%2c712.458%2c725.867C644.157%2c723.178%2c570.76%2c740.326%2c535.652%2c798.975C499.813%2c858.844%2c514.95%2c934.578%2c552.202%2c993.578C586.84%2c1048.438%2c647.633%2c1076.339%2c712.458%2c1079' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M1025.03%2c202.955C1066.751%2c203.708%2c1114.789%2c206.237%2c1137.425%2c171.182C1161.268%2c134.258%2c1148.524%2c85.674%2c1124.554%2c48.832C1102.819%2c15.425%2c1064.855%2c-0.023%2c1025.03%2c-1.567C981.693%2c-3.247%2c934.178%2c3.789%2c911.181%2c40.56C887.13%2c79.016%2c893.411%2c130.109%2c919.449%2c167.249C942.307%2c199.854%2c985.217%2c202.237%2c1025.03%2c202.955' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M1118.817798154679 340.85550497036274L896.795239049545 246.61251999982494 1024.574813184141 562.8780640754967z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float3'%3e%3c/path%3e%3cpath d='M335.9263896161292 193.5501430917097L389.3933402418528 425.1409497985731 620.9841469487162 371.67399917284956 567.5171963229926 140.08319246598614z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3cpath d='M447.88049742156403 274.7557390521551L407.53336398400353 192.03185636841226 303.62110667716956 293.91449786662446z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float2'%3e%3c/path%3e%3cpath d='M74.45162354234427 268.63305240901525L103.1304930408576 356.89753692938723 221.18778507215887 269.7469904214312z' fill='rgba(28%2c 83%2c 142%2c 0.4)' class='triangle-float1'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1088'%3e%3crect width='2000' height='900' fill='white'%3e%3c/rect%3e%3c/mask%3e%3cstyle%3e %40keyframes float1 %7b 0%25%7btransform: translate(0%2c 0)%7d 50%25%7btransform: translate(-10px%2c 0)%7d 100%25%7btransform: translate(0%2c 0)%7d %7d .triangle-float1 %7b animation: float1 5s infinite%3b %7d %40keyframes float2 %7b 0%25%7btransform: translate(0%2c 0)%7d 50%25%7btransform: translate(-5px%2c -5px)%7d 100%25%7btransform: translate(0%2c 0)%7d %7d .triangle-float2 %7b animation: float2 4s infinite%3b %7d %40keyframes float3 %7b 0%25%7btransform: translate(0%2c 0)%7d 50%25%7btransform: translate(0%2c -10px)%7d 100%25%7btransform: translate(0%2c 0)%7d %7d .triangle-float3 %7b animation: float3 6s infinite%3b %7d %3c/style%3e%3c/defs%3e%3c/svg%3e");
            }

            #bg-image:hover {
                transform: scale(1.1)
            }

            #bg-image {
                width: 110%;
                padding: 20px 0px;
                margin-top: 100px;
                transition: transform .5s ease;
            }

            #btnInicial:hover {
                transform: scale(1.2)
            }
            #btnInicial {
                margin-top: 20px;
                transition: transform .5s ease;
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
		
		/*estilos de resumenes de carucel*/
		#btnBotonesCarrucel:hover {
            transform: scale(1.2)
        }
        #btnBotonesCarrucel {
            transition: transform .5s ease;
        }
		/*Scroll para  redireccionar desde el header a las secciones*/
		:root {
		  scroll-behavior: smooth;
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
		/*Estilos de cert mision y vision*/
        .imagem__background {
            height: 70vh;
            background-image: ;
            background-size: 100% center;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            justify-content: center;
            align-items: center;
        }

		.card__giratorio {
            background-color: transparent;
            width: 450px;
            height: 500px;
            perspective: 1000px;
            cursor: pointer;
        }

        .card__giratorio-conteudo {
            cursor: pointer;
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 0.8s;
            transform-style: preserve-3d;
        }

        .card__giratorio:hover .card__giratorio-conteudo {
            transform: rotateY(180deg);
        }

        .card__giratorio-conteudo--frente,
        .card__giratorio-conteudo--traseira {
            position: absolute;
            width: 100%;
            height: 100%;
            -webkit-backface-visibility: hidden;
            /* Safari */
            backface-visibility: hidden;
            border-radius: 15px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }

        .card__giratorio-conteudo--frente,
        .card__giratorio-conteudo--traseira {
            background-color: var(--cor-background-desfocado);
            color: white;
            border-radius: 20px;
            box-shadow: 0 4px 30px var(--cor-shadow-desfocado), inset 0 0 32px -11px white;
            backdrop-filter: blur(5px);
            -webkit-backdrop-filter: blur(5px);
            border: 1px solid var(--cor-borda-desfocado);
        }

        .logo-YoSe {
            width: 500px;
            height: auto;
            filter: drop-shadow(2px 2px 5px black);
        }

        .card__giratorio-conteudo--traseira .cartao__logo-pc {
            grid-area: cartao__logo-pc;
            width: 50px;
            height: auto;
            filter: drop-shadow(2px 2px 5px black);
        }

        .card__giratorio-conteudo--traseira .cartao__numeral {
            grid-area: cartao__numeral;
            margin: 0;
            font-weight: 100;
            font-size: 1.3rem;
        }

        .card__giratorio-conteudo--traseira {
            color: white;
            transform: rotateY(180deg);
            padding: 10px;
            display: grid;
            text-align: left;
            grid-template-columns: 30px 1fr 50px 50px 50px 50px;
            grid-template-rows: 1fr 20px 20px 20px 20px;
            grid-template-areas: ". cartao__chip . . cartao__logo-pc ."
                ". cartao__numeral cartao__numeral cartao__numeral . .";
        }
    /*estilo de boton de mas info*/
        
        .botonMasInfo {
            border: 1px solid #FFac31;
            border-radius: 3px;
            padding: 1rem 2rem;
            letter-spacing: -1px;
            user-select: none;
            color: #FFac31;
            transition: all .195s ease-in-out;
            cursor: pointer;
            margin: 5%;
        }

        .botonMasInfo:hover {
            border: 2px solid #FFac31;
            box-shadow: #FFac31 0px 0px 12px 1px inset,
            #FFac31 0px 0px 12px 1px;
            border-radius: 15px;
            color: #FFac31;
        }
        h1{
            color: white;
        }
        p{
            color: white;
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

    <main >
    	<!--Seccion de vista inicial-->
        <div class="container position-relative zindex-2 pt-5 pb-md-2 pb-lg-4 pb-xl-5">
            <div class="row justify-content-center">
                <div class="col-xl-5 col-md-6 pt-lg-5 text-center text-md-start mb-4 mb-md-0">
                    <h1 class="display-3 pb-2 pb-sm-3">Red de Aprendizaje Colaborativo</h1>
                    <p class="fs-lg d-md-none d-xl-block pb-2 pb-md-0 mb-4 mb-md-5">Bienvenido a YoSé!, compartamos conocimiento y resuelve tus dudas con el apoyo de la comunidad de YoSé!</p>
                    <div class="d-flex justify-content-center justify-content-md-start pb-2 pt-lg-2 pt-xl-0">
                        <a class="btn btn-warning" href="/registro/usuario" role="button" id="btnInicial">Comencemos!</a>
                    </div>
                </div>
                <div class="col-xl-7 col-md-6 d-md-flex justify-content-end">
                    <img src="../assets/img/Indexfotoo.png" alt="Logo YoSe" id="bg-image">
                </div>
            </div>
        </div>
        <!--termino Vista inicial-->
        
        <!--parte experimental de mision y vision-->
        <div class="imagem__background" id="AcercaDe">
            <div class="card__giratorio col-md-4">
                <div class="card__giratorio-conteudo">
                    <div class="card__giratorio-conteudo--frente">
                        <img src="https://www.fundacionjan.cl/wp-content/uploads/mision.png" alt="Logo mastercadr" class="logo-YoSe">
                        
                    </div>
                    <div class="card__giratorio-conteudo--traseira">
                        <h2 class="">MISIÓN</h2>
                        <img src="https://i.postimg.cc/Qd39dHGf/Vector.png" alt="Icono de mision" class="cartao__logo-pc">
                        <h2 class="cartao__numeral">Esperamos generar un espacio en el que se realicen conexiones entre personas 
                        que deseen compartir información o consultar por ella.</h2>
                    </div>
                </div>
            </div>
            <div class="col-md-1"></div>
            <div class="card__giratorio col-md-4">
                <div class="card__giratorio-conteudo">
                    <div class="card__giratorio-conteudo--frente">
                        <img src="https://www.fundacionjan.cl/wp-content/uploads/vision.png" alt="Logo mastercadr" class="logo-YoSe">
                    </div>
                    <div class="card__giratorio-conteudo--traseira">
                        <h2 class="">VISIÓN</h2>
                        <img src="https://i.postimg.cc/Qd39dHGf/Vector.png" alt="Icono de mision" class="cartao__logo-pc">
                        <h2 class="cartao__numeral">Poder encontrar información de interés en
                            materias específicas, o tambien resolver 
                            dudas, fomentando así el espíritu de compartir y recibir conocimiento.</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center align-items-center">
            <a href="https://www.youtube.com/embed/Qdgrmb3UnYQ" class="botonMasInfo">MÁS INFORMACIÓN</a>
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
        <!--Seccion Resumen Carrusel-->
            <div class="row justify-content-evenly" style= "-webkit-text-fill-color: white; text-align: center;">
                <div class="border rounded border-warning col-2 resumen" id="btnBotonesCarrucel">
                    <img src="https://i.postimg.cc/T34pwJmh/Cursor-Click.png" alt="Conectar">
                    <h5>Conecta</h5>
                </div>
                <div class="border rounded border-warning col-2 resumen" id="btnBotonesCarrucel">
                    <img src="https://i.postimg.cc/W4qtJq68/Lamp.png" alt="Preguntar">
                    <h5>Pregunta</h5>
                </div>
                <div class="border rounded border-warning col-2 resumen" id="btnBotonesCarrucel">
                    <img src="https://i.postimg.cc/gJ9jycgW/Search.png" alt="Buscar">
                    <h5>Busca</h5>
                </div>
                <div class="border rounded border-warning col-2 resumen" id="btnBotonesCarrucel">
                    <img src="https://i.postimg.cc/RZsntBrS/Bookmark.png" alt="Guardar">
                    <h5>Guarda</h5>
                </div>
                <div class="border rounded border-warning col-2 resumen" id="btnBotonesCarrucel">
                    <img src="https://i.postimg.cc/ZRrRwkQy/Share.png" alt="Compartir">
                    <h5>Comparte</h5>
                </div>
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