<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import='java.util.*'%>
<%@page import='java.sql.*'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proceso a�adir coche</title>
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
		String matricula = request.getParameter("matricula");
		String numBastidor = request.getParameter("numBastidor");
		String color = request.getParameter("color");
		String numAsientos = request.getParameter("numAsientos");
		String precio = request.getParameter("precio");
		String numPuertas = request.getParameter("numPuertas");
		String cMaletero = request.getParameter("cMaletero");
		String nSerie = request.getParameter("serie");

		// inserta en la tabla de vehiculos
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "insert into vehiculos(matricula,numAsientos,color,precio,numBastidor,nSerie,tipoVehiculo)values('"
					+ matricula + "','" + numAsientos + "','" + color + "','" + precio + "','" + numBastidor + "','"+nSerie
					+ "','coche')";
			statement.executeUpdate(sql);

		} catch (Exception e) {
			e.printStackTrace();
		}
		// inserta en la tabla coches
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "insert into coches(idVehiculo,matricula,nPuertas,cMaletero)values((select max(idVehiculo) from vehiculos),'"
					+ matricula + "','" + numPuertas + "','" + cMaletero + "')";
			statement.executeUpdate(sql);
			response.sendRedirect("success.html");

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>