<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css.css" rel="stylesheet" type="text/css" />
<meta charset="ISO-8859-1">
<title>Insertar coche</title>
</head>
<body>
	<table border="1" width="50%" id="tab">
		<tr>
			<td width="100%">
				<form method="POST" action="saveCo.jsp">

					<h2 align="center">AÑADIR COCHE</h2>
					<table class="insertar" border="1" width="100%">
						<tr class="insert">
							<td width="50%"><b>Matricula:</b></td>
							<td width="50%"><input type="text" name="matricula" size="50" placeholder="<%=request.getParameter("matricula") %>" minlength="6" maxlength="7" required pattern="[A-Z0-9]{6,7}" title="Numeros y Mayusculas" />
							</td>	
						</tr>
						<tr>
							<td width="50%"><b>numBastidor:</b></td>
							<td width="50%"><input type="number" name="numBastidor" size="50" placeholder="Nº Bastidor" minlength="4" maxlength="4" required pattern="[0-9]{4}" title="Numero de 4 cifras"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>Color:</b></td>
							<td width="50%"><input type="text" name="color"
								size="50" placeholder="Color" minlength="3" maxlength="10" required pattern="[A-Za-z]{3,10}" title="Mayusculas y Minusculas"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numAsientos:</b></td>

							<td width="50%"><input type="text" name="numAsientos"
								size="50" placeholder="Nº Asientos" minlength="1" maxlength="1" required pattern="[1-9]{1}" title="Numero del 1 al 9"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>precio:</b></td>
							<td width="50%"><input type="text" name="precio"
								size="50" placeholder="Precio" minlength="4" maxlength="6" required pattern="[0-9]{4,6}" title="Numero de 4 a 6 cifras"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numPuertas:</b></td>
							<td width="50%"><input type="text" name="numPuertas"
							size="50" placeholder="Nº Puertas" minlength="1" maxlength="1" required pattern="[2-4]{1}" title="Numero de 2 a 4"></td>	
						</tr>
						<tr class="insert">
							<td width="50%"><b>capacidadMaletero:</b></td>
							<td width="50%"><input type="text" name="cMaletero"
								size="50" placeholder="Capacidad de Maletero" minlength="3" maxlength="4" required pattern="[0-9]{3,4}" title="Numero de 3 a 4 cifras"></td>
						</tr>
					</table>
		<p>
			<input type="submit" value="Enviar" name="Enviar"> <input
				type="reset" value="Borrar" name="Borrar">
		</p>
		</form>
		</td>
		</tr>
	</table>
	<%
		out.println("<br>");
		out.println("<a class='tabla' href='index.jsp'> Volver al inicio </a>");
		out.println("<a class='tabla' href='co.jsp'> Volver </a>");
	%>
</body>
</html>
