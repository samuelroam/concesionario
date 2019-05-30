<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css.css" rel="stylesheet" type="text/css" />
<title>Lista camiones</title>
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
	<h2 align="center">
		<font color="#f0595e"><strong>Lista de camiones</strong></font>
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
				<td><b>tipo mercancia</b></td>
				<td><b>vender</b></td>
			</tr>
			<%
				int i = 0;
				try {
					connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
					statement = connection.createStatement();
					String sql = "SELECT v.idVehiculo, v.matricula, v.numBastidor, v.color, v.numAsientos, v.precio, v.nSerie, c.carga, c.tMercancia FROM camiones c inner join vehiculos v where c.matricula = v.matricula";

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
				<td><%=resultSet.getString("carga")%></td>
				<td><%=resultSet.getString("tMercancia")%></td>
				<td><input type="radio" name="select"
					value="<%=resultSet.getString("idVehiculo")%>"></input></td>
				<td><a class="edicion"
					href="../concesionario/editarCa.jsp?idVehiculo=<%=resultSet.getString("idVehiculo")%>">Pintar</a></td>
			</tr>
			<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</table>
		<a class="button" href="index.jsp">Volver al inicio</a> <input
			class="button" type="submit" name="borrar" value="$$$ vender $$$"
			title="Borra el vehiculo seleccionado"> <a class="button"
			href="insertCa.jsp" title="Inserta un nuevo vehiculo">Comprar</a>
	</form>

</body>
</html>