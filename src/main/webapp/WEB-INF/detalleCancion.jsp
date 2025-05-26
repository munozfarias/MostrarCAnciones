<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Detalle de Canción</title>
	<link rel="stylesheet" href="/estilos/styles.css">
</head>
<body>
    <h1>Detalle de Canción</h1>
    <p><strong>Título:</strong> ${cancion.titulo}</p>
    <p><strong>Artista:</strong> ${cancion.artista}</p>
    <p><strong>Álbum:</strong> ${cancion.album}</p>
    <p><strong>Género:</strong> ${cancion.genero}</p>
    <p><strong>Idioma:</strong> ${cancion.idioma}</p>
    <p><strong>Fecha creación:</strong> ${cancion.fechaCreacion}</p>
    <p><strong>Última actualización:</strong> ${cancion.fechaActualizacion}</p>
    <a href="/canciones">Volver a lista de canciones</a>
	<a href="/canciones/formulario/editar/${cancion.id}">Editar esta canción</a>
</body>
</html>
