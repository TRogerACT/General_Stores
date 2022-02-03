<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:if test="${empty email}">
	<c:redirect url="${pageContext.request.contextPath}/user/sign-in"/>  
</c:if>
	<title>Rodrigo de Carnicos | Mi Cuenta</title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="layouts/user-navigation.jsp"></jsp:include>
	<jsp:include page="layouts/user-menu.jsp"></jsp:include>
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
				Cuenta Actualizada correctamente.
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
			<form:form action="${pageContext.request.contextPath}/customer/updateCustomer" modelAttribute="customerUpdate" method="post">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
					<form:hidden path="id"/>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Tu nombre</label>
							<form:input path="name" class="form-control" placeholder="Name" name="Name" value="${customer.name}" required="required" />
							<form:errors path="name" cssStyle="color:red;" cssClass="error"/>
						</div>
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
								<label class="col-form-label">Teléfono</label>
								<form:input path="phone" class="form-control" value="${customer.phone}" maxlength="9" minlength="9" type="number" placeholder="Phone" name="phone" required="required" />
								<form:errors path="phone" cssStyle="color:red;" cssClass="error"/>
							</div>
<%-- 						<c:out value="Hello == ${gender}" /> --%>
						<c:if test="${gender == 'Male'}">
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Genero</label>
							<form:select path="gender" name="gender" class="form-control" require="required">
								<form:option value="Male" selected="selected">Masculino</form:option>
								<form:option value="Female">Mujer</form:option>
							</form:select>
							<form:errors path="gender" cssStyle="color:red;" cssClass="error"/>
						</div>
						</c:if>
						<c:if test="${gender == 'Female'}">
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Genero</label>
							<form:select path="gender" name="gender" class="form-control" require="required">
								<form:option value="Male">Masculino</form:option>
								<form:option value="Female" selected="selected">Mujer</form:option>
							</form:select>
							<form:errors path="gender" cssStyle="color:red;" cssClass="error"/>
							</div>
						</c:if>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
								<label class="col-form-label">Código PIN</label>
								<form:input path="pinCode" class="form-control" value="${customer.pinCode}" maxlength="6" placeholder="Pin Code" name="pin" required="required" />
								<form:errors path="pinCode" cssStyle="color:red;" cssClass="error"/>
							</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Dirección</label>
							<form:textarea path="address" class="form-control" value="${customer.address}" placeholder="Address" rows="4" cols="45" name="address" required="required"></form:textarea>
							<form:errors path="address" cssStyle="color:red;" cssClass="error"/>
						</div>	
					</div>
					<div class="right-w3l col-md-6">
						<input type="submit" class="form-control" value="Guardar">
					</div>	
				</div>
			</form:form>
			<!-- //form -->
		</div>
	</div>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>