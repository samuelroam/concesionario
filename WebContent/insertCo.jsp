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
							<td width="50%"><input type="text" name="name" size="50" />
							</td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numBastidor:</b></td>
							<td width="50%"><input type="text" name="city" size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>Color:</b></td>
							<td width="50%"><input type="text" name="telephone"
								size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numAsientos:</b></td>
							<td width="50%"><input type="text" name="telephone"
								size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>precio:</b></td>
							<td width="50%"><input type="text" name="telephone"
								size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numPuertas:</b></td>
							<td width="50%"><input type="text" name="telephone"
								size="50"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>capacidadMaletero:</b></td>
							<td width="50%"><input type="text" name="telephone"
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