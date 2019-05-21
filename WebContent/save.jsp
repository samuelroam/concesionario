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
		String matricula = request.getParameter("matricula");
		String numBastidor = request.getParameter("numBastidor");
		String color = request.getParameter("color");
		String numAsientos = request.getParameter("numAsientos");
		String precio = request.getParameter("precio");
		String numPuertas = request.getParameter("numPuertas");
		String cMaletero = request.getParameter("cMaletero");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://10.18.124.73:3306/concesionario", "gerente", "root");
			Statement st = conn.createStatement();

			int i = st.executeUpdate("insert into coches(matricula,nPuertas,cMaletero)values('" + matricula
					+ "','" + numPuertas + "','" + cMaletero + "')insert into vehiculos(matricula,numAsientos,color,precio,numBastidor)values('" + matricula
					+ "','" + numAsientos + "','" + color+ "','" + precio
					+ "','" + numBastidor+ "');");
			out.println("Data is successfully inserted!");
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
	%>
</body>
</html>