<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Rodrigos de Carnicos | Has olvidado tu contraseña </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="layouts/navigation-bar.jsp"></jsp:include>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="/home">Inicio</a>
						<i>|</i>
					</li>
					<li>Has olvidado tu contraseña</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->
	<br>
	<div class="container h-100">
		<c:if test="${not empty success}">
		<div class="alert alert-success alert-dismissible fade show">
        <strong>Has olvidado tu contraseña!</strong> Correo ha sido enviado.
        Click  <a href="${pageContext.request.contextPath}/admin/" style="text-decoration: underline;" class="title">Aquí</a> iniciar sesión.<button type="button" class="close" data-dismiss="alert">&times;</button>
   		</div>
	</c:if>
		<c:if test="${not empty blank}">
				<div class="alert alert-danger alert-dismissible fade show">
        <strong>Has olvidado tu contraseña!</strong> Correo electronico es requerido.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   				</div>
		</c:if>
		<c:if test="${not empty error}">
			<div class="alert alert-danger alert-dismissible fade show">
        <strong>Has olvidado tu contraseña!</strong> ¡UPS! Algo salió mal.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   			</div>
		</c:if>
		<c:if test="${not empty notFound}">
			<div class="alert alert-danger alert-dismissible fade show">
        <strong>Has olvidado tu contraseña!</strong> No se pudo encontrar una usuario con este correo electrónico.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   			 </div>
		</c:if>
		<div class="d-flex justify-content-center h-100">
		    <div class="row">
				<div class="col-md-12">
					<form action="/admin/forgotPassword" method="post">
						<div class="form-group">
							<label class="col-form-label">Correo</label>
							<input type="email" class="form-control" size="35" placeholder="Ingrese correo electrónico" name="email" id="email" required="required">
						</div>	
						<div class="right-w3l">
							<input type="submit" class="form-control btn btn-primary" value="Enviar">
						</div>
					</form>
					</div>
				</div>
				</div>
			</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>