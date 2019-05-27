<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proceso borrar camion</title>
</head>
<body>
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

		String select = request.getParameter("select");

		// borra el registro de la tabla vehiculos
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "delete from vehiculos where idVehiculo=" + select + ";";
			statement.executeUpdate(sql);

		} catch (Exception e) {
			e.printStackTrace();
		}
		// borra el registro de la tabla camiones
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "delete from camiones where idVehiculo=" + select + ";";
			statement.executeUpdate(sql);
			response.sendRedirect("listaCa.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>