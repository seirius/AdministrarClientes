<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Consultar un Cliente</title>
	<meta name="viewport" content="width=device-width, initial-scale = 1" />
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/myCSS.css">
	<link href='https://fonts.googleapis.com/css?family=Sintony' rel='stylesheet' type='text/css'>
	<script src="../js/jquery-1.11.3.js"></script>
	<script src="../js/bootstrap.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<span class="navbar-brand">Administracion de clientes</span>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li>
							<a href="ingresarCliente.jsp">Ingresar Cliente</a>
						</li>
						<li>
							<a href="modificarCliente.jsp">Modificar Cliente</a>
						</li>
						<li>
							<a href="eliminarCliente.jsp">Eliminar Cliente</a>
						</li>
						<li class="active">
							<a href="consultarUnCliente.jsp">Consultar un Cliente</a>
						</li>
						<li>
							<a href="consultarClientes.jsp">Consultar Clientes</a>
						</li>
					</ul>
				</div>
			</div>
			</nav>
		</div>
	</div>
	<div class="container contenedorForms">
		<div class="row">
			<form action="../ConsultarUnCliente" onsubmit="return eliminarCliente();" method="post">
				<div class="col-lg-10 col-lg-offset-1">
					<div class="row">
						<div class="col-lg-6 col-lg-offset-3 form-group text-center has-feedback">
							<label for="cod_cliente">Codigo de cliente</label>
							<input type="text" class="form-control" id="cod_cliente" name="cod_cliente" />
							<span class="label label-danger hidden">Campo Obligatorio</span>
						</div>
					</div>
					<button type="submit" class="btn btn-success col-lg-4 col-lg-offset-4 col-xs-12">Consultar cliente</button>
				</div>
			</form>
		</div>
	</div>
	<script src="../js/bootstrap.js"></script>
	<script src="../js/plugins.js"></script>
	<script src="../js/myScript.js"></script>
	<script src="../js/insertarCliente.js"></script>
</body>
</html>