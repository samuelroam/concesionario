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
				<form method="POST" action="save.jsp">

					<h2 align="center">AÑADIR COCHE</h2>
					<table class="insertar" border="1" width="100%">
						<tr class="insert">
							<td width="50%"><b>Matricula:</b></td>
							<td width="50%"><input placeholder="1234ABC" minlength="7" maxlength="7" required="" type="text" name="matricula" size="50" />
							</td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numBastidor:</b></td>
							<td width="50%"><input placeholder="1234" minlength="4" minlength="4" required="" type="text" name="numBastidor" size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>Color:</b></td>
							<td width="50%"><input type="text" name="color"
								size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numAsientos:</b></td>
							<td width="50%"><input type="text" name="numAsientos"
								size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>precio:</b></td>
							<td width="50%"><input type="text" name="precio"
								size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numPuertas:</b></td>
							<td width="50%"><input type="text" name="numPuertas"
								size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>capacidadMaletero:</b></td>
							<td width="50%"><input type="text" name="cMaletero"
								size="50"></td>
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