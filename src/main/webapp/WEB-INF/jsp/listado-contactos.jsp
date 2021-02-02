<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado Contactos</title>
</head>
<body>
		
		<h1>Listado de Contactos</h1>
	
	<table>
		<tr>
			<th>ID Contacto</th>
			<th>Nombre Proveedor</th>
			<th>Direccion</th>
			<th>Comuna</th>
		</tr>
		<c:forEach items="${contactosLista}" var="contacto">	
		<tr>
			<td><c:out value="${contacto.getId()}" /></td>
			<td><c:out value="${contacto.getNombreproveedor()}" /></td>
			<td><c:out value="${contacto.getDireccion()}" /></td>
			<td><c:out value="${contacto.getComuna()}" /></td>
			<td>
			<a href="editarContacto/<c:out value="${contacto.getId()}" />">Editar</a> &nbsp;		
			</td>
			<td>
			<a href="nuevoContacto">Ingresar</a> &nbsp;		
			</td>
		</tr>
		</c:forEach>
	</table>
		<br>
		<a href="${pageContext.request.contextPath}">Volver a la página principal</a>
		



</body>
</html>