<!-- navigation -->
	<div class="navbar-inner">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<h1 class="text-left mr-12">
				<a href="${pageContext.request.contextPath}/admin/home" class="font-weight-bold font-italic" style="font-size: 22px;color:#ff0002;">
					<img src="${pageContext.request.contextPath}/images/logo2.png" class="img-fluid">&nbsp;Rodrigos de Carnicos
				</a>
			</h1>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto text-center mr-xl-5">
						<li class="nav-item active mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="${pageContext.request.contextPath}/admin/home">Inicio
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Productos
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/product/view">Ver Productos</a>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/product/add">Añadir Productos</a>
							</div>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Ordenes
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/order/view">Ver Todos los Pedidos</a>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/order/pending-orders">Ver Pedidos Pendientes</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/order/delivered-orders">Ver Pedidos Entregados</a>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/order/cancelled-orders">Ver Pedidos cancelados</a>
							</div>
						</li>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Clientes
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/customer/view">Ver Clientes</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Ver Contactos</a>
							</div>
						</li>
						
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Bienvenido ${aname}
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/my-account">Mi Cuenta</a>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/changepassword">Cambiar la Contraseña</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/logout">Cerrar Sesión</a>
							</div>
						</li>	
						
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->
