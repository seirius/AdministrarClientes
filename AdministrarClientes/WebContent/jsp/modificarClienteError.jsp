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
	<title>Modificar Cliente</title>
	<meta name="viewport" content="width=device-width, initial-scale = 1" />
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/myCSS.css">
	<link href='https://fonts.googleapis.com/css?family=Sintony' rel='stylesheet' type='text/css'>
	<script src="js/jquery-1.11.3.js"></script>
	<script src="js/bootstrap.js"></script>
</head>
<body>

	<%
	Connection connection = null;
	
	try {
		MySQLConnection mysql = new MySQLConnection();
		connection = mysql.getConnection();
	%>

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
							<a href="jsp/ingresarCliente.jsp">Ingresar Cliente</a>
						</li>
						<li class="active">
							<a href="jsp/modificarCliente.jsp">Modificar Cliente</a>
						</li>
						<li>
							<a href="jsp/eliminarCliente.jsp">Eliminar Cliente</a>
						</li>
						<li>
							<a href="jsp/consultarCliente.jsp">Consultar un Cliente</a>
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
			<form action="InsertarCliente" onsubmit="return crearCliente();" method="post">
				<div class="col-lg-10 col-lg-offset-1">
					<div class="row">
						<div class="col-lg-6 form-group text-center has-feedback">
							<label for="cod_cliente">Codigo de cliente</label>
							<input type="text" class="form-control" id="cod_cliente" name="cod_cliente" 
							value="<%= request.getParameter("cod_cliente") %>"/>
							<span class="label label-danger hidden">Campo Obligatorio</span>
						</div>
						<div class="col-lg-6 form-group text-center has-feedback">
							<label for="razon_social">Razon Social</label>
							<input type="text" class="form-control" id="razon_social" name="razon_social" 
							value="<%= request.getParameter("razon_social") %>"/>
							<span class="label label-danger hidden">Campo Obligatorio</span>
						</div>
					</div>
					<div class="row">
						<div class="alert alert-danger">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Codigo de Cliente no existe!</strong>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 form-group text-center has-feedback">
							<label for="telefono">Telefono</label>
							<input type="text" class="form-control" id="telefono" name="telefono" 
							value="<%= request.getParameter("telefono") %>"/>
							<span class="label label-danger hidden">Campo Obligatorio</span>
						</div>
						<div class="col-lg-6 form-group text-center has-feedback">
							<label for="direccion">Direccion</label>
							<input type="text" class="form-control" id="direccion" name="direccion"
							value="<%= request.getParameter("direccion") %>"/>
							<span class="label label-danger hidden">Campo Obligatorio</span>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-2 col-lg-offset-1 form-group text-center has-feedback">
							<label for="oferta">Oferta</label>
							<select class="form-control" name="oferta">
								<option value="S">S</option>
								<option value="N">N</option>
							</select>
						</div>
						<div class="col-lg-2 form-group text-center has-feedback">
							<label for="alb_factura">Albaran Factura</label>
							<select class="form-control" name="alb_factura">
								<option value="S">S</option>
								<option value="N">N</option>
							</select>
						</div>
						<div class="col-lg-2 form-group text-center has-feedback">
							<label for="cod_iva">Codigo IVA</label>
							<select class="form-control" name="cod_iva">
								<%
									IVA iva = new IVA(connection);
										ArrayList<String> ivas = iva.getIvas();
										for (String s : ivas) {
								%>
								<option value="<%=s%>"><%=s%></option>
								<%
									}
								%>
							</select>
						</div>
						<div class="col-lg-2 form-group text-center has-feedback">
							<label for="cod_tarifa">Codigo Tarifa</label>
							<select class="form-control" name="cod_tarifa">
								<%
									Tarifas tarifaCon = new Tarifas(connection);
										ArrayList<String> tarifas = tarifaCon.getTarifas();
										for (String s : tarifas) {
								%>
								<option value="<%=s%>"><%=s%></option>
								<%
									}
								%>
							</select>
						</div>
						<div class="col-lg-2 form-group text-center has-feedback">
							<label for="forma_pago">Forma de pago</label>
							<select class="form-control" name="forma_pago">
								<%
									FormaPago pagosCon = new FormaPago(connection);
										ArrayList<String> pagos = pagosCon.getFormasPago();
										for (String s : pagos) {
								%>
								<option value="<%=s%>"><%=s%></option>
								<%
									}
								%>
							</select>
						</div>
					</div>
					<button type="submit" class="btn btn-success col-lg-6 col-lg-offset-3 col-xs-12">Modificar cliente</button>
				</div>
			</form>
		</div>
	</div>

	<%
		} catch (SQLException e) {
			connection.close();
		}
	%>
	<script src="js/bootstrap.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/myScript.js"></script>
	<script src="js/insertarCliente.js"></script>
</body>
</html>