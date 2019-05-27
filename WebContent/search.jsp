<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image:url('bus.jpg');background-repeat:strech;size:'100%';">
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
				<td><b>tipo de vehiculo</b></td>
			</tr>
			
	<%
	String color = request.getParameter("color");
	String easterEgg="rojo";
	
	if (request.getParameter("color") == easterEgg) {
		response.sendRedirect("https://www.google.es/");
	}else{
	
	try {
		connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
		statement = connection.createStatement();
		String sql = "SELECT idVehiculo, matricula, numBastidor, color, numAsientos, precio, nSerie, tipoVehiculo FROM vehiculos where color like '"+ color+"';";

		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {

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
	}
			%>
			</table>
			<a href="buscar.jsp">Volver a buscar</a>
			<a href="index.jsp">Volver al inicio</a>
</body>
</html>