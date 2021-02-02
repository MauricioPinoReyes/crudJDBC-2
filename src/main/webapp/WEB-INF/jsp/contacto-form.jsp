<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ingresar nuevo contacto</title>
</head>
<body>

	<h1>Crear Contacto</h1>
	<form:form action="saveContacto" method="post">
		Nombre Proveedor: <form:input path="nombreproveedor"/><br/>
		Direccion       : <form:input path="direccion"/><br/>
		Comuna    : <form:input path="comuna"/><br/>
		<input type="submit" value="Crear Contacto" />
	</form:form>
	<br/>
	<a href="${pageContext.request.contextPath}">Volver a la página principal</a>


</body>
</html>