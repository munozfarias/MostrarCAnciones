package com.marcelomunoz.modelos;

import jakarta.persistence.*;
import java.util.Date;
import java.util.List;

@Entity                                     
@Table(name = "artistas")                   
public class Artista {

    @Id                                     
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;                       

    private String nombre;                
    private String apellido;                
    private String biografia;               

    @Column(name = "fecha_creacion", 
            updatable = false, 
            insertable = false)
    private Date fechaCreacion;            

    @Column(name = "fecha_actualizacion", 
            insertable = false, 
            updatable = false)
    private Date fechaActualizacion;        

    @OneToMany(                             
        mappedBy = "artista",              
        fetch = FetchType.LAZY            
    )
    private List<Cancion> canciones;   
    
    @Transient
    public String getNombreCompleto() {
        return nombre + " " + apellido;
    }
    public Artista() {}                     

   
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public String getApellido() { return apellido; }
    public void setApellido(String apellido) { this.apellido = apellido; }

    public String getBiografia() { return biografia; }
    public void setBiografia(String biografia) { this.biografia = biografia; }

    public Date getFechaCreacion() { return fechaCreacion; }
    public void setFechaCreacion(Date fechaCreacion) { this.fechaCreacion = fechaCreacion; }

    public Date getFechaActualizacion() { return fechaActualizacion; }
    public void setFechaActualizacion(Date fechaActualizacion) { this.fechaActualizacion = fechaActualizacion; }

    public List<Cancion> getCanciones() { return canciones; }
    public void setCanciones(List<Cancion> canciones) { this.canciones = canciones; }
}
