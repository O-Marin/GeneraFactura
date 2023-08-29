<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./common/css/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="./common/css/style.css" rel="stylesheet" type="text/css">

</head>
<body class="mt-1 p-3">
	<nav class="indexNav navContainer">
		<div class="navContainer ">
			<div class="left p-3 m-3">
				<img src="./common/img/earth.png" id="icon" alt="User Icon" />
			</div>

			<div class="right p-3 m-3">
				<p>
					<strong>generador factura 2023</strong>
				</p>
				<p>
					<strong>competition part LTD</strong>
				</p>
				<p>2023 Agosto</p>
			</div>
		</div>
	</nav>
	<%-- 
	Requerimientos: 
		Un formulario de ingreso de datos personales con los campos de nombre, empresa,
		rut, dirección, ciudad, país.
		
--%>
	<form action="primerServlet" class="row g-3" method="GET">
		<div class="col-md-6">
			<label for="inputEmail4" class="form-label">Nombre Completo</label> <input
				type="text" class="form-control" id="inputEmail4" name="nombre">
		</div>
		<div class="col-md-6">
			<label for="inputPassword4" class="form-label">Empresa</label> <input
				type="text" class="form-control" id="inputPassword4" name="empresa">
		</div>
		<div class="col-12">
			<label for="inputAddress" class="form-label">Direccion</label> <input
				type="text" class="form-control" id="inputAddress"
				name="direccion">
		</div>
		<div class="col-md-6">
			<label for="inputAddress2" class="form-label">Ciudad</label> <input
				type="text" class="form-control" id="inputAddress2" name="ciudad">
		</div>
		<div class="col-md-6">
			<label for="inputCity" class="form-label">Pais</label> <input
				type="text" class="form-control" id="inputCity" name="pais">
		</div>

		<br>
		<table class="table table-dark table-hover m-0">
			<thead>
				<tr>

					<th scope="col">Item</th>
					<th scope="col">Descripcion</th>
					<th scope="col">Valor Unidad</th>
					<th scope="col">Cantidad</th>
				</tr>
			</thead>
			<tbody>
				<tr>

					<td>Valvulas Titanio</td>
					<td>Valvulas de Carrera</td>
					<td>$120.000</td>
					<td><input type="number" class="form-control" min="0"
						oninput="validity.valid||(value='');" name="valvulas"></td>
				</tr>
				<tr>

					<td>Turbo Full Carrera</td>
					<td>Turbo de competicion multimarca</td>
					<td>$1.700.000</td>
					<td><input type="number" class="form-control" min="0"
						oninput="validity.valid||(value='');" name="turbo"></td>
				</tr>
				<tr>

					<td>Kit Freno de Competicion</td>
					<td>Juegos de Discos, Balatas, Caliper de Competicion</td>
					<td>$760.000</td>
					<td><input type="number" class="form-control" min="0"
						oninput="validity.valid||(value='');" name="kitFreno"></td>
				</tr>
				<tr>

					<td>Sistema De Refrigeracion</td>
					<td>Sistema de Enfriamiento Motor Carrera</td>
					<td>$2.300.000</td>
					<td><input type="number" class="form-control" min="0"
						oninput="validity.valid||(value='');" name="refrigeracion"></td>
				</tr>
				<tr>

					<td>Plumillas Limpia Parabrisas Estandar</td>
					<td>Plumillas para la lluvia</td>
					<td>$10.000</td>
					<td><input type="number" class="form-control" min="0"
						oninput="validity.valid||(value='');" name="plumillas"></td>
				</tr>
			</tbody>

		</table>
		<div class="buttonContainer">
			<div class="m-1">
				<button type="submit" class="btn btn-primary">Generar
					Factura</button>
			</div>
			<div class="m-1">
				<button type="reset" class="btn btn-primary">Limpiar</button>
			</div>
		</div>
	</form>
</body>
</html>