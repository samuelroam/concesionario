<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import='java.util.*'%>
<%@page import='java.sql.*'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proceso añadir camion</title>
</head>
<body id="ca">
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
		String matricula = request.getParameter("matricula");
		String numBastidor = request.getParameter("numBastidor");
		String color = request.getParameter("color");
		String numAsientos = request.getParameter("numAsientos");
		String precio = request.getParameter("precio");
		String carga = request.getParameter("carga");
		String tMercancia = request.getParameter("tMercancia");
		String nSerie = request.getParameter("nSerie");

		// inserta en la tabla de vehiculos
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "insert into vehiculos(matricula,numAsientos,color,precio,numBastidor,nSerie,tipoVehiculo)values('"
					+ matricula + "','" + numAsientos + "','" + color + "','" + precio + "','" + numBastidor
					+ "', '6646F3G520K21" + nSerie + "','camion')";
			statement.executeUpdate(sql);

		} catch (Exception e) {
			e.printStackTrace();
		}
		// inserta en la tabla camiones
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "insert into camiones(idVehiculo,matricula,carga,tMercancia)values((select max(idVehiculo) from vehiculos),'"
					+ matricula + "','" + carga + "','" + tMercancia + "')";
			statement.executeUpdate(sql);
			response.sendRedirect("success.html");

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>