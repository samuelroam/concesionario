<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="modelo.*" %>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.Iterator" %>
    
    <%
    CocheModelo cocheModelo = new CocheModelo();
    ArrayList<Coche> coches = cocheModelo.selectAll(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Iterator<Coche> i = coches.iterator();
	Coche coche;
	CocheModelo modeloCoche = new CocheModelo();
	
	while(i.hasNext()){
		coche = i.next();
		%>
		<tr>
			<td>
				<%=coche.getNumPuertas()%>
			</td>
			<td>
				<%=coche.getCapacidadMaletero()%>
			</td>
			<td>
				 
			</td>
			<td>
<%-- <%				<a class="btn btn-info" href="../VerLibro?id=<%=libro.getId()%>">ver</a>%> --%>
		</td>
		</tr>
		<%
	}//fin while
	%> --%>
	%>

</body>
</html>