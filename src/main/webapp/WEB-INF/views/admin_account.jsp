<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Rodrigos de Carnicos | Mi cuenta</title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="layouts/admin_menu.jsp"></jsp:include>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="/admin/home">Inicio</a>
						<i>|</i>
					</li>
					<li>Mi Cuenta</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->
	<br>
<!-- register -->
	<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
		<c:if test="${not empty success}">
			<div class="alert alert-success alert-dismissible fade show">
				Cuenta actualizada correctamente.
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		</c:if>
		<c:if test="${not empty error}">
			<div class="alert alert-danger alert-dismissible fade show">
				Algo salió mal.
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		</c:if>
		<!-- form -->
			<form action="/admin/updateProfile" method="post">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Nombre</label>
							<input type="text" class="form-control" placeholder="Nombre" name="name" id="name" value="${name}" />
						</div>
						
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Correo</label>
							<input type="email" class="form-control" placeholder="Correo" name="email" id="email" value="${email}"/>
						</div>
					</div>
					<div class="right-w3l col-md-6">
						<input type="submit" id="submit" class="form-control" value="Actualizar">
					</div>
				</div>
			</form>
			<!-- //form -->
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>
