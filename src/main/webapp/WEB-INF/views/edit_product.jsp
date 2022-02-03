<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Rodrigos de Carnicos | A�adir Producto</title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="layouts/user-navigation.jsp"></jsp:include>
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
						<a href="${pageContext.request.contextPath}/home">Inicio</a>
						<i>|</i>
					</li>
					<li>A�adir Producto</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->
	<br>
	<div class="alert alert-info alert-dismissible fade show text-center">
			Nota: El tama�o de imagen recomendado es 300x200 en p�xeles.
	</div>
<!-- register -->
	<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
		<!-- form -->
			<div class="alert alert-success alert-dismissible fade show text-center" id="success" style="display:none;"></div>
			<div class="alert alert-danger alert-dismissible fade show text-center" id="error" style="display:none;"></div>
		<form id="form">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Nombre</label>
							<c:set var="code" value="${code}" scope="session"></c:set>
							<input type="text" class="form-control" placeholder="Nombre del Producto" id="name" value="${product.name}" name="name" required="required">
							<p id="error_name"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Descripci�n</label>
							<textarea class="form-control" placeholder="Descripci�n del Producto" id="description" rows="3" cols="45" name="description" required="required">${product.description}</textarea>
							<p id="error_description"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label" style="color:red;">Imagen [Opcional]</label>
							<c:set var="imageData" value="${product.image}" scope="session"></c:set>
							<input type="file" class="form-control" name="image" id="image" required="required">
							<p id="error_file"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Precio</label>
							<input type="text" class="form-control" value="${product.mrpPrice}" placeholder="Precio" name="mrp_price" id="mrp_price" required="required">
							<p id="error_mrp_price"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Oferta</label>
							<input type="text" class="form-control" value="${product.price}" placeholder="Oferta" name="price" id="price" required="required">
							<p id="error_price"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Estado</label>
							<select name="active" id="active" class="form-control">
								<option value="true" selected="selected">Activo</option>
								<option value="false">Inactivo</option>
							</select>
							<p id="error_active"></p>
						</div>	
					</div>
						<div class="right-w3l col-md-6">
							<input type="button" style="background-color: #0879c9;" id="submit" class="btn btn-primary form-control" value="Guardar">
						</div>
				</div>
			</form>
			<!-- //form -->
  <p class="text-center">
  <img src="${pageContext.request.contextPath}/images/loader.gif" alt="loader" style="width: 150px;height: 120px;" id="loader">
  </p>
		</div>
	</div>
	
	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/products.js"></script>
</body>
</html>