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
	<h2 align="center">
		<font color="#FF00FF"><strong>Select query in JSP</strong></font>
	</h2>
	<table align="center" cellpadding="4" cellspacing="4">
		<tr>

		</tr>
		<tr bgcolor="#008000">
			<td><b>numero</b></td>
			<td><b>matricula</b></td>
			<td><b>bastidor</b></td>
			<td><b>color</b></td>
			<td><b>numero asientos</b></td>
			<td><b>precio</b></td>
			<td><b>serie</b></td>
			<td><b>carga</b></td>
			<td><b>tipo mercancia</b></td>
		</tr>
		<%
		int i = 0;
			try {
				connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
				statement = connection.createStatement();
				String sql = "SELECT c.matricula, v.numBastidor, v.color, v.numAsientos, v.precio, v.nSerie, c.carga, c.tMercancia FROM camiones c inner join vehiculos v where c.matricula = v.matricula";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
					i++;
		%>
		<tr bgcolor="#8FBC8F">

			<td><% out.println(i); %></td>
			<td><%=resultSet.getString("matricula")%></td>
			<td><%=resultSet.getString("numBastidor")%></td>
			<td><%=resultSet.getString("color")%></td>
			<td><%=resultSet.getString("numAsientos")%></td>
			<td><%=resultSet.getString("precio")%></td>
			<td><%=resultSet.getString("nSerie")%></td>
			<td><%=resultSet.getString("carga")%></td>
			<td><%=resultSet.getString("tMercancia")%></td>



			<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		
	</table>

</body>
</html>