<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	%>


	<%
		String idVehiculo = request.getParameter("idVehiculo");
		String matricula = request.getParameter("matricula");
		String numBastidor = request.getParameter("numBastidor");
		String color = request.getParameter("color");
		String numAsientos = request.getParameter("numAsientos");
		String precio = request.getParameter("precio");
		String carga = request.getParameter("carga");
		String tMercancia = request.getParameter("tMercancia");

		

		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "update vehiculos set matricula = '"+matricula+"', numAsientos='"+numAsientos+"', color='"+color+"', precio='"+precio+"', numBastidor='"+numBastidor+"' where idVehiculo='"+idVehiculo+"';";
// 					"insert into vehiculos(matricula,numAsientos,color,precio,numBastidor,tipoVehiculo)values('" + matricula
// 					+ "','" + numAsientos + "','" + color + "','" + precio + "','" + numBastidor + "','coche')";
			statement.executeUpdate(sql);
			response.sendRedirect("ca.jsp");

		} catch (Exception e) {
			e.printStackTrace();
 		}

		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "update vehiculos set matricula='"+matricula+"', carga='"+carga+"',tMercancia='"+tMercancia+"'where idVehiculo='"+idVehiculo+"';";
			statement.executeUpdate(sql);
			
			response.sendRedirect("co.jsp");
			

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>