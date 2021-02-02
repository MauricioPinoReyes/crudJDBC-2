<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Contacto</title>
</head>
<body>
	
	<h1>Editar Contacto</h1>
	<form:form action="${pageContext.request.contextPath}/actualizaContacto" method="post">
		ID Contacto: <form:input path="id" readonly="true" /><br/>
		Nombre Proveedor: <form:input path="nombreproveedor"/><br/>
		Direccion: <form:input path="direccion"/><br/>
		Comuna: <form:input path="comuna"/><br/>
		<input type="submit" value="Editar Contacto" />
	</form:form>
	<br/>
	<a href="${pageContext.request.contextPath}">Volver a la página principal</a>
	



</body>
</html>