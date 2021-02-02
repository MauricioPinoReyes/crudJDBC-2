<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
     integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous">

      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> 
    
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