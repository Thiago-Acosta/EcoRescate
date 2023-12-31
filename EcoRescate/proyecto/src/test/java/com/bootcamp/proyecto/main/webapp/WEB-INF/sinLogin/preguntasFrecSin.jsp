<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formateo fechas (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Formulario form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- para errores de renderizado en rutas PUT -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Preguntas Frecuentes</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>
<style>
header, footer {
	background-color: #82e462;
	display: flex;
	justify-content: space-between;
	padding: 5px 10px;
	align-items: center;
}

.header-green {
	background: linear-gradient(135deg, #28a745, #e9ecef);
	background-color: #184e8e;
	padding-bottom: -50px;
	font-family: 'Source Sans Pro', sans-serif;
}

header img, footer img {
	height: 80px;
}

.swiper {
	width: 100%;
	padding-top: 50px;
	padding-bottom: 50px;
}

.swiper-slide {
	background-position: center;
	background-size: cover;
	width: 300px;
	height: 300px;
	border: 2px solid #181212;
}

.swiper-slide img {
	display: block;
	width: 100%;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 200px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown:hover .dropdown-content {
	display: block;
}

/* Estilos para los enlaces del men� */
.dropdown-content a {
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.content {
	padding: 0px;
	text-align:;
	color: black;
	margin: 0px;
}

.content h1 {
	height: 300px;
	display: flex;
	color: white;
	justify-content: center;
	align-items: center;
	margin: 0;
	background-size: cover;
	background-position: center;
	font-size: 50px;
}

.content h2 {
	font-size: 24px;
	margin-top: 20px;
}

.content p {
	margin-bottom: 20px;
}

.reciclaje {
	height: 250px;
	display: flex;
	color: white;
	justify-content: center;
	align-items: center;
	margin: 0;
	background-size: cover;
	background-position: center;
	font-size: 50px;
}

.btn-custom {
	background-color: #007fffa1;
	color: white;
	border: none;
}

.btn-custom:hover {
	background-color: #0056b3;
}

.mission, .vision {
	display: inline-block;
	width: 48%;
	vertical-align: top;
	margin: 10px;
}

.carousel-item {
	background-size: cover;
	background-position: center;
	height: 300px;
}

.rounded-image {
	border-radius: 20px;
}

body {
	margin: 0;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, sans-serif;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	background-color: #f7f7f7;
}

.navbar {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-ms-flex-align: center;
	align-items: center;
	-ms-flex-pack: justify;
	justify-content: space-between;
	padding: 5px;
}

/*
headeer top
*/
.topbar {
	background-color: rgb(16, 71, 36);
	padding: 0;
}

.topbar .container .row {
	margin: -7px;
	padding: 0;
}

.topbar .container .row .col-md-12 {
	padding: 0;
}

.topbar p {
	margin: 0;
	display: inline-block;
	font-size: 13px;
	color: #f1f6ff;
}

.topbar p>i {
	margin-right: 5px;
}

.topbar p:last-child {
	text-align: right;
}

header .navbar {
	margin-bottom: 0;
}

.topbar li.topbar {
	display: inline;
	padding-right: 18px;
	line-height: 52px;
	transition: all .3s linear;
}

.topbar li.topbar:hover {
	color: #1bbde8;
}

.topbar ul.info i {
	color: #131313;
	font-style: normal;
	margin-right: 8px;
	display: inline-block;
	position: relative;
	top: 4px;
}

.topbar ul.info li {
	float: right;
	padding-left: 30px;
	color: #ffffff;
	font-size: 13px;
	line-height: 44px;
}

.topbar ul.info i span {
	color: #aaa;
	font-size: 13px;
	font-weight: 400;
	line-height: 50px;
	padding-left: 18px;
}

ul.social-network {
	border: none;
	margin: 0;
	padding: 0;
}

ul.social-network li {
	border: none;
	margin: 0;
}

ul.social-network li i {
	margin: 0;
}

ul.social-network li {
	display: inline;
	margin: 0 5px;
	border: 0px solid #2D2D2D;
	padding: 5px 0 0;
	width: 32px;
	display: inline-block;
	text-align: center;
	height: 32px;
	vertical-align: baseline;
	color: #000;
}

ul.social-network {
	list-style: none;
	margin: 5px 0 10px -25px;
	float: right;
}

.waves-effect {
	position: relative;
	cursor: pointer;
	display: inline-block;
	overflow: hidden;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-tap-highlight-color: transparent;
	vertical-align: middle;
	z-index: 1;
	will-change: opacity, transform;
	transition: .3s ease-out;
	color: #fff;
}

a {
	color: #0a0a0a;
	text-decoration: none;
}

li {
	list-style-type: none;
}

.bg-image-full {
	background-position: center center;
	background-repeat: no-repeat;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
}

.bg-dark {
	background-color: #222 !important;
}

.mx-background-top-linear {
	background: -webkit-linear-gradient(45deg, #54d400 48%, #1b1e21 48%);
	/* 	background: -webkit-linear-gradient(left, #208946 48%, #208946 48%); */
	background: linear-gradient(45deg, #44b15e 48%, rgb(16 71 36) 48%);
}

.logo-image {
	max-height: 65px; /* Establece una altura m�xima para la imagen */
	width: auto; /* Permite que el ancho se ajuste autom�ticamente */
}

/* BOT�N DE REGISTRO */
.register .action-button {
	position: absolute;
	right: -400px;
	bottom: 20px;
	background: transparent;
	border: 1px solid rgb(255, 255, 255);
	border-radius: 40px;
	color: #fff;
	padding: .3rem .8rem;
	background: transparent;
}
/* BOT�N DE REGISTRO */
.rounded-box {
	border-radius: 70px;
	padding: 20px;
	background-color: #ffffff;
	text-align: center;
	width: 70%; /* Ajusta el ancho del bloque seg�n tus necesidades */
	height: 150px; /* Ajusta la altura del bloque seg�n tus necesidades */
	margin: 0 auto; /* Centra horizontalmente el bloque */
	display: flex;
	flex-direction: column;
	justify-content: center;
}

/*ESTILOS PARA FOOTER*/
.site-footer {
	background-color: #104724;
	padding: 45px 0 20px;
	font-size: 15px;
	line-height: 24px;
	color: #737373;
}

.site-footer hr {
	border-top-color: #bbb;
	opacity: 0.5
}

.site-footer h6 {
	color: #fff;
	font-size: 16px;
	text-transform: uppercase;
	margin-top: 5px;
	letter-spacing: 2px
}

.footer-links {
	padding-left: 0;
	list-style: none
}
/*ESTILOS PARA FOOTER*/
</style>
</head>
<body
	style="display: grid; min-height: 100vh; grid-template-row: auto 1fr auto;">

	<div class="fixed-top">
		<header class="topbar">
			<nav
				class="navbar navbar-expand-lg navbar-dark mx-background-top-linear"
				style="background-color: #104724d1;">
				<div class="container mt-1">
					<div class="d-flex align-items-center">
						<img alt="logo" src="imgs/mapache_logo-removebg-preview.png"
							class="d-inline-block logo-image">
						<p style="font-size: 20px;">
							<strong>ECORESCATE</strong>
						</p>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarResponsive" aria-controls="navbarResponsive"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarResponsive"
						style="margin-left: 500px">

						<ul class="navbar-nav ml-auto">

							<li class="nav-item active"><a class="nav-link" href="/">Inicio</a></li>

							<li class="dropdown nav-item"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Publicaciones</a>
								<div class="dropdown-content" style="color: black;"
									aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="/Login">Publicaciones de
										personas</a> <a class="dropdown-item" href="/Login">Publicaciones
										de empresas</a>

								</div></li>

							<li class="nav-item"><a class="nav-link" href="/empresas">Empresas</a>
							</li>


							<li class="dropdown nav-item"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Nosotros </a>
								<div class="dropdown-content" style="color: black;"
									aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="/nosotrosSinSesion">�Quienes
										somos?</a> <a class="dropdown-item" href="/reciclajeSinSesion">Reciclaje
										org�nico</a> <a class="dropdown-item"
										href="/preguntasFrecuentesSinSesion">Preguntas frecuentes</a>
								</div></li>
						</ul>
						<div class="register">
							<span class="navbar-text"></span> <a
								class="btn btn-light action-button" role="button" href="/Login">Iniciar
								Sesi�n</a>
						</div>
					</div>
				</div>
			</nav>
		</header>
	</div>
	<div class="content"
		style="margin-top: 100px; margin-bottom: 20px; padding: 30px;">
		<div class="rounded-box">
			<h2 style="color: #2faa4c; font-size: 50px;">PREGUNTAS
				FRECUENTES</h2>
		</div>

		<div class="accordion mt-4 p-4" id="faqAccordion">
			<!-- PREGUNTA UNO -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading1">
					<button class="accordion-button" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse1"
						aria-expanded="true" aria-controls="faqCollapse1">�Puedo
						aportar otro residuo que no sea org�nico?</button>
				</h2>
				<div id="faqCollapse1" class="accordion-collapse collapse show"
					aria-labelledby="faqHeading1" data-bs-parent="#faqAccordion">
					<div class="accordion-body">No, nuestra organizaci�n solo
						trabaja con residuos org�nicos.</div>
				</div>
			</div>

			<!-- PREGUNTA DOS -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading2">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse2"
						aria-expanded="false" aria-controls="faqCollapse2">�La
						organizaci�n tiene fines de lucro?</button>
				</h2>
				<div id="faqCollapse2" class="accordion-collapse collapse"
					aria-labelledby="faqHeading2" data-bs-parent="#faqAccordion">
					<div class="accordion-body">No tenemos fines lucrativos,
						cualquier persona puede recibir y otorgar los desechos de manera
						gratuita.</div>
				</div>
			</div>

			<!-- PREGUNTA TRES -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading3">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse3"
						aria-expanded="false" aria-controls="faqCollapse3">�Tengo
						alguna manera de publicitar mis productos creados a base de los
						residuos?</button>
				</h2>
				<div id="faqCollapse3" class="accordion-collapse collapse"
					aria-labelledby="faqHeading3" data-bs-parent="#faqAccordion">
					<div class="accordion-body">S�, tenemos un espacio de
						publicidad, donde cualquier interesado puede publicitar sus
						productos; esta opci�n lleva un costo.</div>
				</div>
			</div>

			<!-- PREGUNTA CUATRO -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading4">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse4"
						aria-expanded="false" aria-controls="faqCollapse4">�Qu�
						diferencia hay entre compostaje y reciclaje de materiales
						org�nicos?</button>
				</h2>
				<div id="faqCollapse4" class="accordion-collapse collapse"
					aria-labelledby="faqHeading4" data-bs-parent="#faqAccordion">
					<div class="accordion-body">El compostaje produce compost,
						mientras que el reciclaje de materiales org�nicos busca utilizar
						estos materiales de manera m�s eficiente para obtener energ�a o
						productos �tiles.</div>
				</div>
			</div>

			<!-- PREGUNTA CINCO -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading5">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse5"
						aria-expanded="false" aria-controls="faqCollapse5">�Cu�les
						son los errores comunes que debemos evitar al reciclar org�nicos?</button>
				</h2>
				<div id="faqCollapse5" class="accordion-collapse collapse"
					aria-labelledby="faqHeading5" data-bs-parent="#faqAccordion">
					<div class="accordion-body">Algunos errores comunes a evitar
						incluyen la inclusi�n de materiales no org�nicos, falta de
						aireaci�n adecuada, y mantener un equilibrio de humedad
						incorrecto.</div>
				</div>
			</div>

			<!-- PREGUNTA SEIS -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading6">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse6"
						aria-expanded="false" aria-controls="faqCollapse6">�C�mo
						puedo promover el reciclaje org�nico en mi empresa o lugar de
						trabajo?</button>
				</h2>
				<div id="faqCollapse6" class="accordion-collapse collapse"
					aria-labelledby="faqHeading6" data-bs-parent="#faqAccordion">
					<div class="accordion-body">Para promover el reciclaje
						org�nico en tu empresa, puedes asegurarte de que haya contenedores
						espec�ficos para materiales org�nicos en �reas de almuerzo y
						cocina, fomentar la reducci�n de desperdicios org�nicos y
						considerar implementar un sistema de recompensas o reconocimiento
						para motivar a los empleados a participar activamente en el
						reciclaje org�nico.</div>
				</div>
			</div>

			<!-- PREGUNTA OCHO -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading6">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse6"
						aria-expanded="false" aria-controls="faqCollapse6">�Qu�
						se hace con los residuos org�nicos reciclados?</button>
				</h2>
				<div id="faqCollapse6" class="accordion-collapse collapse"
					aria-labelledby="faqHeading6" data-bs-parent="#faqAccordion">
					<div class="accordion-body">Los residuos org�nicos reciclados
						se convierten en un nuevo producto que la persona/empresa
						recolector frabrique.</div>
				</div>
			</div>

			<!-- PREGUNTA NUEVE -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading6">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse6"
						aria-expanded="false" aria-controls="faqCollapse6">�C�mo
						se recolectan los residuos org�nicos?</button>
				</h2>
				<div id="faqCollapse6" class="accordion-collapse collapse"
					aria-labelledby="faqHeading6" data-bs-parent="#faqAccordion">
					<div class="accordion-body">Los residuos org�nicos se
						recolectan por medio de una comunicacion entre las partes
						generadores y recolectores, donde la mayoria de veces, la entidad
						recolector se dirige hacia la ubicaci�n del generador y recoge los
						residuos.</div>
				</div>
			</div>
			<!-- PREGUNTA DIEZ -->
			<div class="accordion-item">
				<h2 class="accordion-header" id="faqHeading6">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#faqCollapse6"
						aria-expanded="false" aria-controls="faqCollapse6">�Cu�les
						son los beneficios ambientales del reciclaje org�nico?</button>
				</h2>
				<div id="faqCollapse6" class="accordion-collapse collapse"
					aria-labelledby="faqHeading6" data-bs-parent="#faqAccordion">
					<div class="accordion-body">El reciclaje org�nico reduce la
						generaci�n de metano en vertederos, disminuye la necesidad de
						incineraci�n y conserva recursos naturales al reutilizar residuos
						para enriquecer el suelo.</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-3">
					<h6>Acerca</h6>
					<p class="text-justify">
						<i>ECORESCATE</i> gestiona el reciclaje de los residuos org�nicos
						generados por empresas y/o personas individuales. Queremos
						impulsar la conciencia medioambiental hasta convertir el reciclaje
						en un h�bito diario para la poblaci�n, contribuyendo a hacer de
						este mundo un lugar mejor donde vivir.
					</p>
				</div>

				<div class="col-xs-6 col-md-3">
					<h6>Publicaciones</h6>
					<ul class="footer-links">
						<li><a class="nav-link text-white"
							href="/publicacionesPersonas">Publicaciones de personas</a></li>
						<li><a class="nav-link text-white"
							href="/publicacionesEmpresas">Publicaciones de empresas</a></li>
					</ul>
				</div>

				<div class="col-xs-6 col-md-3">
					<h6>Nosotros</h6>
					<ul class="footer-links">
						<li><a class="nav-link text-white" href="/nosotros">�Quienes
								s�mos?</a></li>
						<li><a class="nav-link text-white" href="/reciclaje">Reciclaje
								Org�nico</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-md-3">
					<h6>Preguntas frecuentes</h6>
					<ul class="footer-links">
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentea">�Puedo aportar otro residuo que
								no sea org�nico?</a></li>
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentea">�Cu�les son los errores comunes
								que debemos evitar al reciclar org�nicos?</a></li>
						<li><a class="nav-link text-white"
							href="/preguntasFrecuentea">�Tengo alguna manera de
								publicitar mis productos creados a base de los residuos?</a></li>
					</ul>
				</div>
			</div>
			<hr>
		</div>
	</footer>

</body>
</html>