<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Rodrigo de Carnicos | Has Olvidado tu Contraseña</title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="layouts/navigation-bar.jsp"></jsp:include>
	<jsp:include page="layouts/menu.jsp"></jsp:include>
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
					<li>Has Olvidado tu Contraseña</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->
	<br>
	<div class="container h-100">
	<c:if test="${not empty success}">
								<div class="alert alert-primary alert-dismissible fade show">
        <strong>Has olvidado tu contraseña!</strong> Pronto debería recibir un correo electrónico permitiéndole
        restablecer su contraseña.<br>Asegúrese de revisar su correo no deseado 
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   								 </div>
							</c:if>
							<c:if test="${not empty error}">
								<div class="alert alert-danger alert-dismissible fade show">
        <strong>Has olvidado tu contraseña!</strong> Algo salió mal.<br>Por favor, inténtelo de nuevo más tarde.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   								 </div>
							</c:if>
		<div class="d-flex justify-content-center h-100">
			<div class="row">
				<div class="col-md-12">
					<form:form action="${pageContext.request.contextPath}/customer/forgotPassword" modelAttribute="forgot-password" method="post">
						<div class="form-group">
							<label class="col-form-label">Correo</label>
							<form:input type="email" path="email" class="form-control" placeholder="Correo" name="email" required="required" />
							<form:errors path="email" cssStyle="color:red;" cssClass="error"/>
						</div>	
						<div class="right-w3l">
							<input type="submit" class="form-control" value="Enviar">
						</div>
						<p class="text-center dont-do mt-3">No tienes una cuenta?
							<a href="login">Regístrate ahora</a>
						</p>
					</form:form>
					</div>
				</div>
				</div>
			</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>