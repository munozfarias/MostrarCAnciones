<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Agregar Canción</title>
    <link rel="stylesheet" href="/css/estilo.css">
</head>
<body>
    <h1>Agregar Nueva Canción</h1>

    <form:form method="POST" modelAttribute="cancion" action="/canciones/procesa/agregar">
        <div>
            <form:label path="titulo">Título</form:label><br />
            <form:input path="titulo" />
            <form:errors path="titulo" cssClass="error" />
        </div>

        <div>
            <form:label path="artista">Artista</form:label><br />
            <form:input path="artista" />
            <form:errors path="artista" cssClass="error" />
        </div>

        <div>
            <form:label path="album">Álbum</form:label><br />
            <form:input path="album" />
            <form:errors path="album" cssClass="error" />
        </div>

        <div>
            <form:label path="genero">Género</form:label><br />
            <form:input path="genero" />
            <form:errors path="genero" cssClass="error" />
        </div>

        <div>
            <form:label path="idioma">Idioma</form:label><br />
            <form:input path="idioma" />
            <form:errors path="idioma" cssClass="error" />
        </div>

        <br />
        <button type="submit">Guardar Canción</button>
    </form:form>

    <br />
    <a href="/canciones">Volver a lista de canciones</a>
</body>
</html>
/java.sun.com/jsp/jstl/core" %>