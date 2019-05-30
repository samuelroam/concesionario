<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Historial vehiculos</title>
</head>
<body
	style="background-image: linear-gradient(lightblue, azure, lightblue);">
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
		<font color="#f0595e"><strong>Historial</strong></font>
	</h2>
	<form method="POST" action="deleteCo.jsp">
		<table align="center" cellpadding="4" cellspacing="4">
			<tr>

			</tr>
			<tr bgcolor="#00a080">
				<td><b>id</b></td>
				<td><b>matricula</b></td>
				<td><b>Color viejo</b></td>
				<td><b>Color nuevo</b></td>
				<td><b>precio</b></td>
				<td><b>Usuario</b></td>
				<td><b>fecha</b></td>
				<td><b>Vehiculo</b></td>
				<td><b>accion</b></td>
			</tr>
			<%
				int i = 0;
				try {
					connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
					statement = connection.createStatement();
					String sql = "SELECT idVehiculo, matricula, cViejo, cNuevo, precio, usuario, fecha, tipoVehiculo, accion FROM historial order by fecha desc";

					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
						i++;
			%>
			<tr bgcolor="#8FBC8F">
				<td><%=resultSet.getString("idVehiculo")%></td>
				<td><%=resultSet.getString("matricula")%></td>
				<td><%=resultSet.getString("cViejo")%></td>
				<td><%=resultSet.getString("cNuevo")%></td>
				<td><%=resultSet.getString("precio")%></td>
				<td><%=resultSet.getString("usuario")%></td>
				<td><%=resultSet.getString("fecha")%></td>
				<td><%=resultSet.getString("tipoVehiculo")%></td>
				<td><%=resultSet.getString("accion")%></td>
			</tr>
			<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</table>
	</form>
	<a
		style="display: inline-block; padding: 5px 10px; font-size: 15px; text-align: center; text-decoration: none; outline: none; color: #fff; background-color: #38a404; border: none; border-radius: 5px; box-shadow: 0 9px #888; margin-left: 20%; margin-top: 2%;"
		href="historico.jsp">Recargar</a>

</body>
</html>