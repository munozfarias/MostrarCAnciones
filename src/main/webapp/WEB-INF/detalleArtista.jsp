<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>Detalle de Artista</title>
  <link rel="stylesheet" href="/estilos/styles.css">
</head>
<body>
  <div class="container">
    <h1>${artista.nombre} ${artista.apellido}</h1>

    <p><strong>Biografía:</strong> ${artista.biografia}</p>
    <p><strong>Creado:</strong> ${artista.fechaCreacion}</p>
    <p><strong>Actualizado:</strong> ${artista.fechaActualizacion}</p>

    <h2>Canciones</h2>
    <ul>
      <c:forEach var="c" items="${artista.canciones}">
        <li>
          <a href="/canciones/detalle/${c.id}">${c.titulo}</a>
        </li>
      </c:forEach>
    </ul>

    <div style="text-align: center; margin-top: 1.5rem;">
      <a href="/artistas" class="btn">← Volver a artistas</a>
      <a href="/canciones" class="btn" style="margin-left:1rem;">🎵 Ir a canciones</a>
    </div>
  </div>
</body>
</html>
