<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../concesionario/css.css" rel="stylesheet"
	type="text/css" />
<meta charset="ISO-8859-1">
<title>Lista de vehiculos</title>
</head>
<body style="background-image: url('bugatti.jpg')">
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
	<h2 align="center">
		<font color="#f0595e"><strong>Lista de vehiculos</strong></font>
	</h2>
	<form method="POST" action="deleteCa.jsp">
		<table align="center" cellpadding="4" cellspacing="4">
			<tr>

			</tr>
			<tr bgcolor="#00a080">
				<td><b>numero</b></td>
				<td><b>matricula</b></td>
				<td><b>bastidor</b></td>
				<td><b>color</b></td>
				<td><b>numero asientos</b></td>
				<td><b>precio</b></td>
				<td><b>serie</b></td>
				<td><b>carga</b></td>
			</tr>
			<%
				int i = 0;
				try {
					connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
					statement = connection.createStatement();
					String sql = "SELECT idVehiculo, matricula, numBastidor, color, numAsientos, precio, nSerie, tipoVehiculo FROM vehiculos";

					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
						i++;
			%>
			<tr bgcolor="#8FBC8F">
				<td><%=resultSet.getString("idVehiculo")%></td>
				<td><%=resultSet.getString("matricula")%></td>
				<td><%=resultSet.getString("numBastidor")%></td>
				<td><%=resultSet.getString("color")%></td>
				<td><%=resultSet.getString("numAsientos")%></td>
				<td><%=resultSet.getString("precio")%></td>
				<td><%=resultSet.getString("nSerie")%></td>
				<td><%=resultSet.getString("tipoVehiculo")%></td>
			</tr>
			<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</table>
		<a class="button" href="index.jsp">Volver al inicio</a>
	</form>
</body>
</html>