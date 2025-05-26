package com.marcelomunoz.controladores;

import com.marcelomunoz.modelos.Cancion;
import com.marcelomunoz.servicios.ServicioCanciones;

import jakarta.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class ControladorCanciones {

    @Autowired
    private ServicioCanciones servicio;

    @GetMapping("/canciones")
    public String desplegarCanciones(Model model) {
        model.addAttribute("canciones", servicio.obtenerTodasLasCanciones());
        return "canciones";
    }

    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable("idCancion") Long id, Model model) {
        Cancion cancion = servicio.obtenerCancionPorId(id);
        model.addAttribute("cancion", cancion);
        return "detalleCancion";
    }
    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(Model model) {
        model.addAttribute("cancion", new Cancion());
        return "agregarCancion";
    }
    
    @GetMapping("/canciones/formulario/editar/{idCancion}")
    public String formularioEditarCancion(@PathVariable("idCancion") Long id, Model model) {
        Cancion cancion = servicio.obtenerCancionPorId(id);
        if (cancion == null) {
            return "redirect:/canciones";
        }
        model.addAttribute("cancion", cancion);
        return "editarCancion";
    }


    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(
            @Valid @ModelAttribute("cancion") Cancion cancion,
            BindingResult resultado) {

        if (resultado.hasErrors()) {
            return "agregarCancion";
        }

        servicio.agregarCancion(cancion);
        return "redirect:/canciones";
    }
    
    @PostMapping("/canciones/procesa/editar/{idCancion}")
    public String procesarEditarCancion(
            @PathVariable("idCancion") Long id,
            @Valid @ModelAttribute("cancion") Cancion cancion,
            BindingResult resultado) {

        if (resultado.hasErrors()) {
            return "editarCancion";
        }

        cancion.setId(id); 
        servicio.actualizaCancion(cancion);
        return "redirect:/canciones";
    }


}
