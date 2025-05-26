package com.marcelomunoz.modelos;

import jakarta.persistence.*;
import jakarta.validation.constraints.Size;
import java.util.Date;


@Entity
@Table(name = "canciones")
public class Cancion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private Long id;

    @Size(min = 5, message = "El título debe tener al menos 5 caracteres.")
    private String titulo;

    @Size(min = 3, message = "El artista debe tener al menos 3 caracteres.")
    private String artista;

    @Size(min = 3, message = "El álbum debe tener al menos 3 caracteres.")
    private String album;

    @Size(min = 3, message = "El género debe tener al menos 3 caracteres.")
    private String genero;

    @Size(min = 3, message = "El idioma debe tener al menos 3 caracteres.")
    private String idioma;

    @Column(name = "fecha_creacion", updatable = false, insertable = false)
    private Date fechaCreacion;

    @Column(name = "fecha_actualizacion", insertable = false, updatable = false)
    private Date fechaActualizacion;

    public Cancion() {}

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getArtista() {
        return artista;
    }

    public String getAlbum() {
        return album;
    }

    public String getGenero() {
        return genero;
    }

    public String getIdioma() {
        return idioma;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public Date getFechaActualizacion() {
        return fechaActualizacion;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public void setFechaActualizacion(Date fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }
}
