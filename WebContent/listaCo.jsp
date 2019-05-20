<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="modelo.*" %>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.Iterator" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    CocheModelo cocheModelo = new CocheModelo();
    ArrayList<Coche> coches = cocheModelo.selectAll(); %>
	<%
	Iterator<Coche> i = coches.iterator();
	Coche coche;
	
	
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