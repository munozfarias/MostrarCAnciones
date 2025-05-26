package com.marcelomunoz.servicios;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marcelomunoz.modelos.Cancion;
import com.marcelomunoz.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {

    @Autowired
    private RepositorioCanciones repo;

    public List<Cancion> obtenerTodasLasCanciones() {
        return repo.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        Optional<Cancion> cancion = repo.findById(id);
        return cancion.orElse(null);
    }
    public Cancion agregarCancion(Cancion cancion) {
        return repo.save(cancion);
    }
    public Cancion actualizaCancion(Cancion cancion) {
        return repo.save(cancion); 
    }
}
