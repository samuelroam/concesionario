<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css.css" rel="stylesheet" type="text/css" />
<title>Formulario editar camion</title>
</head>
<body id="ca" style="background-image: url('Camion.jpg')">
	<%
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://10.18.124.89:3306/";
		String dbName = "concesionario";
		String userId = "gerente";
		String password = "root";

		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
	%>
	<%
		String idVehiculo = request.getParameter("idVehiculo");
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "SELECT v.idVehiculo, c.matricula, v.numBastidor, v.color, v.numAsientos, v.precio, v.nSerie, c.carga, c.tMercancia FROM camiones c inner join vehiculos v where c.matricula = v.matricula and v.idVehiculo like "
					+ idVehiculo;

			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
	%>

	<table border="1" width="50%" id="tab">
		<tr>
			<td width="100%">
				<form method="POST" action="updateCa.jsp">

					<h2 align="center">A�ADIR CAMION</h2>
					<table class="insertar" border="1" width="100%">
						<tr class="insert">
							<td width="50%"><b>Id:</b></td>
							<td width="50%"><p><%=resultSet.getString("idVehiculo")%></p>
								<input type="hidden" name="idVehiculo"
								value="<%=resultSet.getString("idVehiculo")%>"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>Matricula:</b></td>
							<td width="50%"><p><%=resultSet.getString("matricula")%></p></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numBastidor:</b></td>
							<td width="50%"><p><%=resultSet.getString("numBastidor")%></p></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>Color:</b></td>
							<td width="50%"><input type="text" name="color"
								value="<%=resultSet.getString("color")%>"
								placeholder="<%=resultSet.getString("color")%>" size="50"
								minlength="3" maxlength="10" required pattern="[A-Za-z]{3,10}"
								title="Mayusculas y Minusculas"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>numAsientos:</b></td>

							<td width="50%"><p><%=resultSet.getString("numAsientos")%></p></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>precio:</b></td>
							<td width="50%"><input type="text" name="precio" size="50"
								value="<%=resultSet.getString("precio")%>"
								placeholder="<%=resultSet.getString("precio")%>" minlength="4"
								maxlength="6" required pattern="[0-9]{4,6}"
								title="Numero de 4 a 6 cifras"></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>Carga:</b></td>
							<td width="50%"><p><%=resultSet.getString("carga")%></p></td>
						</tr>
						<tr class="insert">
							<td width="50%"><b>tipoMercancia:</b></td>
							<td width="50%"><input type="text" name="tMercancia"
								size="50" value="<%=resultSet.getString("tMercancia")%>"
								placeholder="<%=resultSet.getString("tMercancia")%>"
								minlength="1" maxlength="1" required pattern="[A,G,P]{1}"
								title="Letra A,G � P"></td>
						</tr>
					</table>
					<p>
						<a class="button" href="listaCa.jsp">Volver</a> <input
							class="button" type="submit" value="Enviar" name="Enviar">
						<input class="button" type="reset" value="Limpiar" name="Borrar">
					</p>

				</form>
			</td>
		</tr>
	</table>
	<%
		}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

</body>
</html>