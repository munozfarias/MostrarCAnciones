<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8"/>
  <title>Agregar Canción</title>
  <link rel="stylesheet" href="/estilos/styles.css">
</head>
<body>
  <div class="container">
    <h1>➕ Agregar Nueva Canción</h1>

    <form:form method="POST" modelAttribute="cancion" action="/canciones/procesa/agregar">
      <div>
        <form:label path="titulo">Título</form:label>
        <form:input path="titulo"/>
        <form:errors path="titulo" cssClass="error"/>
      </div>

      <div>
        <form:label path="artista.id">Artista</form:label>
        <form:select path="artista.id">
          <form:options items="${artistas}"
                        itemValue="id"
                        itemLabel="nombreCompleto"/>
        </form:select>
        <form:errors path="artista.id" cssClass="error"/>
        <a href="/artistas/formulario/agregar"
           style="display:inline-block; margin-top:0.5rem; font-size:0.85rem;">
          ➕ Nuevo artista
        </a>
      </div>

      <div>
        <form:label path="album">Álbum</form:label>
        <form:input path="album"/>
        <form:errors path="album" cssClass="error"/>
      </div>

      <div>
        <form:label path="genero">Género</form:label>
        <form:input path="genero"/>
        <form:errors path="genero" cssClass="error"/>
      </div>

      <div>
        <form:label path="idioma">Idioma</form:label>
        <form:input path="idioma"/>
        <form:errors path="idioma" cssClass="error"/>
      </div>

      <button type="submit" class="btn">Guardar Canción</button>
    </form:form>

    <div style="text-align: center; margin-top:1rem;">
      <a href="/canciones" class="btn">← Volver a canciones</a>
      <a href="/artistas" class="btn" style="margin-left:1rem;">🎵 Ver artistas</a>
    </div>
  </div>
</body>
</html>
