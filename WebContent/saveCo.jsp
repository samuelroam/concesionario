<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import='java.util.*'%>
<%@page import='java.sql.*'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://10.18.124.73:3306/";
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

		

		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "insert into vehiculos(matricula,numAsientos,color,precio,numBastidor,tipoVehiculo)values('" + matricula
					+ "','" + numAsientos + "','" + color + "','" + precio + "','" + numBastidor + "','coche')";
			statement.executeUpdate(sql);

		} catch (Exception e) {
			e.printStackTrace();
 		}
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "insert into coches(matricula,nPuertas,cMaletero)values('" + matricula + "','"
					+ numPuertas + "','" + cMaletero + "')";
			statement.executeUpdate(sql);
			response.sendRedirect("success.html");
			

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 		try {
		// 			Class.forName("com.mysql.jdbc.Driver");
		// 			Connection conn = DriverManager.getConnection("jdbc:mysql://10.18.124.73:3306/concesionario", "gerente", "root");
		// 			Statement st = conn.createStatement();

		// 			int i = st.executeUpdate("insert into coches(matricula,nPuertas,cMaletero)values('" + matricula
		// 					+ "','" + numPuertas + "','" + cMaletero + "');insert into vehiculos(matricula,numAsientos,color,precio,numBastidor)values('" + matricula
		// 					+ "','" + numAsientos + "','" + color+ "','" + precio
		// 					+ "','" + numBastidor+ "');");
		// 			out.println("Data is successfully inserted!");
		// 		} catch (Exception e) {
		// 			System.out.print(e);
		// 			e.printStackTrace();
		// 		}
	%>
</body>
</html>