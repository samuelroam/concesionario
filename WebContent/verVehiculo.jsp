<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
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
		int i = 0;
		try {
			connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
			statement = connection.createStatement();
			String sql = "SELECT tipoVehiculo from vehiculos";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				i++;

				if (resultSet.getString("tipoVehiculo") == "camion") {
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						String sql2 = "SELECT v.idVehiculo, c.matricula, v.numBastidor, v.color, v.numAsientos, v.precio, v.nSerie, c.nPuertas, c.cMaletero FROM coches c inner join vehiculos v where c.matricula = v.matricula and v.idVehiculo like "
								+ idVehiculo;

						resultSet = statement.executeQuery(sql2);
						while (resultSet.next()) {
							
							%>
							
							
							
							
							
							<table border="1" width="50%" id="tab">
							<tr>
								<td width="100%">
									<form method="POST" action="updateCa.jsp">

										<h2 align="center">AÑADIR CAMION</h2>
										<table class="insertar" border="1" width="100%">
											<tr class="insert">
												<td width="50%"><b>Id:</b></td>
												<td width="50%"><p><%=resultSet.getString("idVehiculo")%></p>
													<input type="hidden" name="idVehiculo"
													value="<%=resultSet.getString("idVehiculo")%>"></td>
											</tr>
											<tr class="insert">
												<td width="50%"><b>Matricula:</b></td>
												<td width="50%"><p><%=resultSet.getString("matricula") %></p>
											</tr>
											<tr>
												<td width="50%"><b>numBastidor:</b></td>
												<td width="50%"><input type="number" name="numBastidor"
													value="<%=resultSet.getString("numBastidor")%>"
													placeholder="<%=resultSet.getString("numBastidor")%>" size="50"
													minlength="4" maxlength="4" required pattern="[0-9]{4}"
													title="Numero de 4 cifras"></td>
											</tr>
											<tr class="insert">
												<td width="50%"><b>Color:</b></td>
												<td width="50%"><input type="text" name="color"
													value="<%=resultSet.getString("color")%>"
													placeholder="<%=resultSet.getString("color")%>" size="50"
													minlength="3" maxlength="10" required pattern="[A-Za-z]{3,10}"
													title="Mayusculas y Minusculas"></td>
											</tr>
											<tr class="insert">
												<td width="50%"><b>numAsientos:</b></td>

												<td width="50%"><input type="text" name="numAsientos"
													size="50" value="<%=resultSet.getString("numAsientos")%>"
													placeholder="<%=resultSet.getString("numAsientos")%>"
													minlength="1" maxlength="1" required pattern="[1-9]{1}"
													title="Numero del 1 al 9"></td>
											</tr>
											<tr class="insert">
												<td width="50%"><b>precio:</b></td>
												<td width="50%"><input type="text" name="precio" size="50"
													value="<%=resultSet.getString("precio")%>"
													placeholder="<%=resultSet.getString("precio")%>" minlength="4"
													maxlength="6" required pattern="[0-9]{4,6}"
													title="Numero de 4 a 6 cifras"></td>
											</tr>
											<tr class="insert">
												<td width="50%"><b>Carga:</b></td>
												<td width="50%"><input type="text" name="carga" size="50"
													value="<%=resultSet.getString("carga")%>"
													placeholder="<%=resultSet.getString("carga")%>" minlength="3"
													maxlength="3" required pattern="[0-9]{3}"
													title="Numero de 3 cifras"></td>
											</tr>
											<tr class="insert">
												<td width="50%"><b>tipoMercancia:</b></td>
												<td width="50%"><input type="text" name="tMercancia"
													size="50" value="<%=resultSet.getString("tMercancia")%>"
													placeholder="<%=resultSet.getString("tMercancia")%>"
													minlength="1" maxlength="1" required pattern="[A,G,P]{1}"
													title="Letra A,G ó P"></td>
											</tr>
										</table>
										<p>
											<input type="submit" value="Enviar" name="Enviar"> <input
												type="reset" value="Borrar" name="Borrar">
										</p>
									</form>
								</td>
							</tr>
						</table>
							
							
							
							
							<%
							
							
							
							
						}

					} catch (Exception e) {
						e.printStackTrace();
					}

				} else if (resultSet.getString("tipoVehiculo") == "coche") {
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						String sql3 = "SELECT v.idVehiculo, c.matricula, v.numBastidor, v.color, v.numAsientos, v.precio, v.nSerie, c.carga, c.tMercancia FROM camiones c inner join vehiculos v where c.matricula = v.matricula and v.idVehiculo like "
								+ idVehiculo;

						resultSet = statement.executeQuery(sql3);
						while (resultSet.next()) {
						}

					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>