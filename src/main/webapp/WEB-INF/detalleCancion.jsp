<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>Detalle de Canción</title>
  <link rel="stylesheet" href="/estilos/styles.css">
</head>
<body>
  <div class="container">
    <h1>${cancion.titulo}</h1>

    <p><strong>Artista:</strong>
      <a href="/artistas/detalle/${cancion.artista.id}">
        ${cancion.artista.nombreCompleto}
      </a>
    </p>
    <p><strong>Álbum:</strong> ${cancion.album}</p>
    <p><strong>Género:</strong> ${cancion.genero}</p>
    <p><strong>Idioma:</strong> ${cancion.idioma}</p>
    <p><strong>Creado:</strong> ${cancion.fechaCreacion}</p>
    <p><strong>Actualizado:</strong> ${cancion.fechaActualizacion}</p>

    <div style="text-align: center; margin-top:1.5rem;">
      <a href="/canciones" class="btn">← Volver a canciones</a>
      <a href="/canciones/formulario/editar/${cancion.id}"
         class="btn" style="margin-left:1rem;">✏️ Editar</a>
    </div>
  </div>
</body>
</html>
