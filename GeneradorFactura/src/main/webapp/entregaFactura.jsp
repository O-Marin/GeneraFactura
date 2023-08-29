<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>They Fucked Up Eventually</title>
<link href="./common/css/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="./common/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

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

	<%
	Object name = request.getAttribute("nombreCompleto");
	Object empresa = request.getAttribute("empresa");
	Object direccion = request.getAttribute("direccion");
	Object ciudad = request.getAttribute("ciudad");
	Object pais = request.getAttribute("pais");

	Object valvulas = request.getAttribute("valvulas");
	Object turbo = request.getAttribute("turbo");
	Object kitFreno = request.getAttribute("kitFreno");
	Object refrigeracion = request.getAttribute("refrigeracion");
	Object plumillas = request.getAttribute("plumillas");

	Object totalValvulas = request.getAttribute("totalValvulas");
	Object totalTurbo = request.getAttribute("totalTurbo");
	Object totalKitFreno = request.getAttribute("totalKitFreno");
	Object totalRefrigeracion = request.getAttribute("totalRefrigeracion");
	Object totalPlumillas = request.getAttribute("totalPlumillas");

	Object totalDeTotales = request.getAttribute("totalDeTotales");
	double descuento = 0.1;
	String strTotales = String.valueOf(totalDeTotales);
	int totales = Integer.parseInt(strTotales);
	double descuentoTotal = descuento * totales;
	double totalesConDescuento = totales - descuentoTotal;

	int totalConDescuento = (int) totalesConDescuento;
	%>

	
	<div class="containerFactura">
		<div>
			<p>
				Nombre :
				<%=name%></p>
			<p>
				Empresa :
				<%=empresa%></p>
			<p>
				Direccion :
				<%=direccion%></p>
		</div>
		<div>
			<p>
				Ciudad :
				<%=ciudad%></p>
			<p>
				Pais :
				<%=pais%></p>
		</div>
	</div>

	<table class="table table-dark table-hover m-0">
		<thead>
			<tr>
				<th scope="col">Item</th>
				<th scope="col">Cantidad</th>
				<th scope="col">Valor Unidad</th>
				<th scope="col">Total Item</th>
				<th scope="col">Total de totales</th>

			</tr>
		</thead>
		<tbody>
			<tr>

				<td>Valvulas Titanio</td>
				<td>Valvulas de Carrera</td>
				<td>$120.000</td>

				<td>$<%=totalValvulas%></td>
				<td></td>

			</tr>
			<tr>

				<td>Turbo Full Carrera</td>
				<td>Turbo de competicion multimarca</td>
				<td>$1.700.000</td>

				<td>$<%=totalTurbo%></td>
				<td></td>

			</tr>
			<tr>

				<td>Kit Freno de Competicion</td>
				<td>Juegos de Discos, Balatas, Caliper de Competicion</td>
				<td>$760.000</td>

				<td>$<%=totalKitFreno%></td>
				<td></td>

			</tr>
			<tr>

				<td>Sistema De Refrigeracion</td>
				<td>Sistema de Enfriamiento Motor Carrera</td>
				<td>$2.300.000</td>

				<td>$<%=totalRefrigeracion%></td>
				<td></td>

			</tr>
			<tr>

				<td>Plumillas Limpia Parabrisas Estandar</td>
				<td>Plumillas para la lluvia</td>
				<td>$10.000</td>

				<td>$<%=totalPlumillas%></td>
				<td></td>
			</tr>
			<tr>
				<td>Descuento</td>
				<td></td>
				<td></td>
				<td></td>
				<td>10%</td>

			</tr>
			<tr>
				<td>Total de Totales</td>
				<td></td>
				<td></td>
				<td></td>
				<td>$<%=totalConDescuento%></td>

			</tr>

		</tbody>
	</table>




</body>
</html>