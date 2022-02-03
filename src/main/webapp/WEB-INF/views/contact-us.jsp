<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Rodrigos de Carnicos | Contacto</title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
	<style type="text/css">
		
	</style>
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
	<div class="page-head_agile_info_w3l">

	</div>
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
					<li>Contacta con Nosotros</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->
	<br>
	<!-- contact -->
	<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>C</span>ontacta
				<span>C</span>on
				<span>N</span>osotros
			</h3>
			<!-- //tittle heading -->
			<div class="row contact-grids agile-1 mb-5">
				<div class="col-sm-4 contact-grid agileinfo-6 mt-sm-0 mt-2">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-map-marker-alt rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Dirección</h4>
						<p style="font-weight: bold;color:black;">Rodrigos de Carnicos
							<label style="font-weight: bold;color:black;">Pasaje 48-A Mza.53 Lt.16 - Proviv Confraternidad Lima 39 Los Olivos, Peru</label>
						</p>
					</div>
				</div>
				<div class="col-sm-4 contact-grid agileinfo-6 my-sm-0 my-4">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-phone rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Llámanos</h4>
						<p style="font-weight: bold;color:black;"><a style="font-weight: bold;color:black;">+(01) 621 0382</a>
						
<!-- 							<label>+(91) 121 122 000</label> -->
						</p>
					</div>
				</div>
				<div class="col-sm-4 contact-grid agileinfo-6">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-envelope-open rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Email</h4>
						<p>
							<a style="font-weight: bold;color:black;">inv.rodrigodecarnicos@gmail.com</a>
						</p>
					</div>
				</div>
			</div>

			<!-- //form -->
			<br>
					<center><div id="success" style="color: green;font-weight: bold;font-size: 15px;"></div></center>
					<center><div id="error" style="color: green;font-weight: bold;font-size: 15px;"></div></center>
  <center>
  <img src="${pageContext.request.contextPath}/images/loader.gif" alt="loader" style="width: 150px;height: 120px;" id="loader">
  </center>
		</div>
	</div>
	<!-- //contact -->
	<!---728x90--->
	<!-- map -->
	<div class="map mt-sm-0 mt-4">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d52513.06144950003!2d-77.0828305612156!3d-11.97058016164487!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105ce3cb25d4b77%3A0xa71318b3e4ba495c!2s50%2C%20Los%20Olivos%2015306!5e0!3m2!1ses!2spe!4v1625852226948!5m2!1ses!2spe" allowfullscreen=""></iframe>
	</div>
	<!-- //map -->	
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/contact.js"></script>
</body>
</html>