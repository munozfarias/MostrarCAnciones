<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>Artistas</title>
  <link rel="stylesheet" href="/estilos/styles.css">
</head>
<body>
  <div class="container">
    <h1>Artistas</h1>

    <div style="text-align: center; margin-bottom: 1rem;">
      <a href="/artistas/formulario/agregar" class="btn">➕ Agregar artista</a>
      <a href="/canciones"               class="btn" style="margin-left:1rem;">🎵 Ver canciones</a>
    </div>

    <ul>
		<c:forEach var="artista" items="${artistas}">
		  <li>
		    <a href="/artistas/detalle/${artista.id}">
		      ${artista.nombre} ${artista.apellido}
		    </a>
		    |
		    <a href="/artistas/eliminar/${artista.id}"
		       onclick="return confirm('¿Eliminar este artista? Todas sus canciones se desvincularán.');"
		       style="color:#c00;">
		      🗑️
		    </a>
		  </li>
		</c:forEach>

    </ul>
  </div>
</body>
</html>
