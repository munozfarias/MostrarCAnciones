<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>Canciones</title>
  <link rel="stylesheet" href="/estilos/styles.css">
</head>
<body>
  <div class="container">
    <h1>Canciones</h1>

    <div style="text-align: center; margin-bottom:1rem;">
      <a href="/canciones/formulario/agregar" class="btn">➕ Agregar canción</a>
      <a href="/artistas" class="btn" style="margin-left:1rem;">🎵 Ver artistas</a>
    </div>

    <table>
      <thead>
        <tr>
          <th>Título</th>
          <th>Artista</th>
          <th>Acciones</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="c" items="${canciones}">
          <tr>
            <td>${c.titulo}</td>
            <td>${c.artista.nombreCompleto}</td>
            <td>
              <a href="/canciones/detalle/${c.id}">Detalle</a>
              |
              <a href="/canciones/formulario/editar/${c.id}">Editar</a>
			  |
			  <a href="/canciones/eliminar/${c.id}"
			     onclick="return confirm('¿Seguro que quieres eliminar esta canción?');">
			    Eliminar
			  </a>

            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</body>
</html>
