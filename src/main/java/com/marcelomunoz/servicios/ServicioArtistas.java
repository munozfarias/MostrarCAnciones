package com.marcelomunoz.servicios;

import com.marcelomunoz.modelos.Artista;
import com.marcelomunoz.repositorios.RepositorioArtistas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServicioArtistas {

    @Autowired
    private RepositorioArtistas repositorio;

    public List<Artista> obtenerTodosLosArtistas() {
        return repositorio.findAll();
    }

    public Artista obtenerArtistaPorId(Long id) {
        return repositorio.findById(id).orElse(null);
    }

    public Artista agregarArtista(Artista artista) {
        return repositorio.save(artista);
    }

    public void eliminaArtista(Long id) {
        repositorio.deleteById(id);
    }
}
