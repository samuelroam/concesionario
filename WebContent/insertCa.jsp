<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css.css" rel="stylesheet" type="text/css" />
<meta charset="ISO-8859-1">
<title>Formulario insertar camion</title>
</head>
<body id="ca" style="background-image:url('Camion.jpg')">
	<table border="1" width="50%" id="tab">
		<tr>
			<td width="100%">
				<form method="POST" action="saveCa.jsp">

					<h2 align="center">AÑADIR CAMION</h2>
					<table class="insertar" border="1" width="100%">
						<tr class="insert">
							<td width="50%"><b>Matricula:</b></td>
							<td width="50%"><input type="text" name="matricula"
								size="50" placeholder="Matricula" minlength="6" maxlength="7"
								required pattern="[A-Z0-9]{6,7}" title="Numeros y Mayusculas" />
							</td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numBastidor:</b></td>
							<td width="50%"><input type="text" name="numBastidor"
								size="50" placeholder="Nº Bastidor" minlength="4" maxlength="4"
								required pattern="[0-9]{4}" title="Numero de 4 cifras"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>Color:</b></td>
							<td width="50%"><input type="text" name="color" size="50"
								placeholder="Color" minlength="3" maxlength="10" required
								pattern="[A-Za-z]{3,10}" title="Mayusculas y Minusculas"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numAsientos:</b></td>
							<td width="50%"><input type="text" name="numAsientos"
								size="50" placeholder="Nº Asientos" minlength="1" maxlength="1"
								required pattern="[1-9]{1}" title="Numero del 1 al 9"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>precio:</b></td>
							<td width="50%"><input type="text" name="precio" size="50"
								placeholder="Precio" minlength="4" maxlength="6" required
								pattern="[0-9]{4,6}" title="Numero de 4 a 6 cifras"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>serie:</b></td>
							<td width="50%"><input type="text" name="nSerie" size="50"
								placeholder="serie" minlength="4"
								maxlength="4" required pattern="[0-9]{4,6}"
								title="Numero de 4 cifras"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>Carga:</b></td>
							<td width="50%"><input type="text" name="carga" size="50"
								placeholder="Carga en KG" minlength="3" maxlength="3" required
								pattern="[0-9]{3}" title="Numero de 3 cifras"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>tipoMercancia:</b></td>
							<td width="50%"><input type="text" name="tMercancia"
								size="50" placeholder="Tipo de Mercancia" minlength="1"
								maxlength="1" required pattern="[A,G,P]{1}"
								title="Letra A,G ó P"></td>
						</tr>
					</table>
					<p>
						<input class="button" type="submit" value="Enviar" name="Enviar"> <input
							class="button" type="reset" value="Limpiar" name="Borrar">
					</p>
				</form>
			</td>
		</tr>
	</table>
	<%
		out.println("<br>");
		out.println("<a class='button' href='index.jsp'> Volver al inicio </a>");
		out.println("<a class='button' href='listaCa.jsp'> Volver </a>");
	%>

</body>
</html>
