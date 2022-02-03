<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Rodrigos de Carnicos | Acerca de</title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
	<c:choose>
	<c:when test="${not empty email}">
		<jsp:include page="layouts/user-navigation.jsp"></jsp:include>
		<jsp:include page="layouts/user-menu.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="layouts/navigation-bar.jsp"></jsp:include>
		<jsp:include page="layouts/menu.jsp"></jsp:include>
	</c:otherwise>
</c:choose>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="${pageContext.request.contextPath}/home">Inicio</a>
						<i>|</i>
					</li>
					<li>Sobre Nosotros</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->
	<br>
<!-- about -->
	<div class="welcome py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>S</span>obre
				<span>N</span>osotros</h3>
			<!-- //tittle heading -->
			<div class="row">
				<div class="col-lg-6 welcome-left">
					<h3>Sobre la Empresa</h3>
					<h4 class="my-sm-3 my-2">Somos un grupo de empresas dinámicas e innovadoras en los procesos de comercialización y distribución de Carne Nacional de primera calidad., cuenta con experiencia en el rubro, ofreciendo a nuestros clientes amplia variedad en cortes finos y de rueda.</h4>
				</div>
				
				<div class="col-lg-6 welcome-right-top mt-lg-0 mt-sm-5 mt-4">
					<img src="${pageContext.request.contextPath}/images/store.jpg" class="img-fluid" alt=" ">
				</div>
				<div class="welcome-left">
					<br><br><h3 class="text-left" style="color:#ff0002;">&ensp;Productos</h3>
					<h4 class="my-sm-3" style="margin-left:15px;">Nuestros productos cumplen con las más exigentes normas de salubridad Ozonizados y Empacados al vacío; obteniendo la certificación de DIGESA, SENASA Y ACTUALMENTE IMPLEMENTADO EL SISTEMA HACCP, contando así con el respaldo de la Universidad agraria la Molina y con la garantía de nuestros clientes en el rubro de autoservicios, restaurants, hoteles y concesionarios en favor a nuestra calidad y puntualidad.</h4>
				</div>
				<div class="welcome-left">
					<br><br><h3 class="text-left" style="color:#ff0002;">&ensp;Referencias Comerciales</h3>
					<h4 class="my-sm-3" style="margin-left:15px;">
					<li>RESTAURANT CHARLOTTE EMPRESA CHARLOTTE S.A.</li>
					<li>CADENA DE RESTAURANTES PARDOS CHICKEN.</li>
					<li>NACIONAL DE CHICHARRONES RESTAURANT DOÑA PAULINA</li>
					</h4>
				</div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>