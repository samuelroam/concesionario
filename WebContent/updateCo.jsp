<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proceso editar coche</title>
</head>
<body id="co">
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
		String matricula = request.getParameter("matricula");
		String numBastidor = request.getParameter("numBastidor");
		String color = request.getParameter("color");
		String numAsientos = request.getParameter("numAsientos");
		String precio = request.getParameter("precio");
		String numPuertas = request.getParameter("numPuertas");
		String cMaletero = request.getParameter("cMaletero");

		// actualiza la tabla de vehiculos
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "update vehiculos set color='" + color + "', precio='" + precio + "' where idVehiculo='"
					+ idVehiculo + "';";
			statement.executeUpdate(sql);
			response.sendRedirect("listaCo.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>