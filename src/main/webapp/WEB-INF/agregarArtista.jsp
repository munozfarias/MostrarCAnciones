<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>Agregar Artista</title>
  <link rel="stylesheet" href="/estilos/styles.css">
</head>
<body>
  <div class="container">
    <h1>➕ Agregar Nuevo Artista</h1>

    <form:form method="POST" modelAttribute="artista" action="/artistas/procesa/agregar">
      <div>
        <form:label path="nombre">Nombre</form:label>
        <form:input path="nombre"/>
        <form:errors path="nombre" cssClass="error"/>
      </div>

      <div>
        <form:label path="apellido">Apellido</form:label>
        <form:input path="apellido"/>
        <form:errors path="apellido" cssClass="error"/>
      </div>

      <div>
        <form:label path="biografia">Biografía</form:label>
        <form:textarea path="biografia" rows="4"/>
        <form:errors path="biografia" cssClass="error"/>
      </div>

      <button type="submit" class="btn">Guardar Artista</button>
    </form:form>

    <div style="text-align: center; margin-top:1rem;">
      <a href="/artistas" class="btn">← Volver a artistas</a>
    </div>
  </div>
</body>
</html>
