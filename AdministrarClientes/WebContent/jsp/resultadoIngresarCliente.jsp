<%@page import="main.herbolario.FormaPago"%>
<%@page import="main.herbolario.Tarifas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="main.herbolario.IVA"%>
<%@page import="bbdd.MySQLConnection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Ingresar Cliente</title>
	<meta name="viewport" content="width=device-width, initial-scale = 1" />
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/myCSS.css">
	<link href='https://fonts.googleapis.com/css?family=Sintony' rel='stylesheet' type='text/css'>
	<script src="js/jquery-1.11.3.js"></script>
	<script src="js/bootstrap.js"></script>
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
						<li class="active">
							<a href="jsp/ingresarCliente.jsp">Ingresar Cliente</a>
						</li>
						<li>
							<a href="jsp/modificarCliente.jsp">Modificar Cliente</a>
						</li>
						<li>
							<a href="jsp/eliminarCliente.jsp">Eliminar Cliente</a>
						</li>
						<li>
							<a href="jsp/consultarUnCliente.jsp">Consultar un Cliente</a>
						</li>
						<li>
							<a href="jsp/consultarClientes.jsp">Consultar Clientes</a>
						</li>
					</ul>
				</div>
			</div>
			</nav>
		</div>
	</div>
	<div class="container contenedorForms">
		<div class="row">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Codigo Cliente</th>
						<th>Razon Social</th>
						<th>Telefono</th>
						<th>Direccion</th>
						<th>Oferta</th>
						<th>Albaran Factura</th>
						<th>Codigo de IVA</th>
						<th>Codigo Tarifa</th>
						<th>Forma de Pago</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th><%= request.getParameter("cod_cliente") %></th>
						<th><%= request.getParameter("razon_social") %></th>
						<th><%= request.getParameter("telefono") %></th>
						<th><%= request.getParameter("direccion") %></th>
						<th><%= request.getParameter("oferta") %></th>
						<th><%= request.getParameter("alb_factura") %></th>
						<th><%= request.getParameter("cod_iva") %></th>
						<th><%= request.getParameter("cod_tarifa") %></th>
						<th><%= request.getParameter("forma_pago") %></th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<script src="js/bootstrap.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/myScript.js"></script>
	<script src="js/insertarCliente.js"></script>
</body>
</html>