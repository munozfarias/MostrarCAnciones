package com.marcelomunoz.controladores;
import com.marcelomunoz.modelos.Artista;
import com.marcelomunoz.servicios.ServicioArtistas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ControladorArtistas {

    @Autowired
    private ServicioArtistas servicio;

    @GetMapping("/artistas")
    public String desplegarArtistas(Model model) {
        model.addAttribute("artistas", servicio.obtenerTodosLosArtistas());
        return "artistas";
    }

    @GetMapping("/artistas/detalle/{idArtista}")
    public String detalle(@PathVariable("idArtista") Long id, Model model) {
        model.addAttribute("artista", servicio.obtenerArtistaPorId(id));
        return "detalleArtista";
    }

    @GetMapping("/artistas/formulario/agregar")
    public String formNuevo(Model model) {
        model.addAttribute("artista", new Artista());
        return "agregarArtista";
    }
    
    @PostMapping("/artistas/procesa/agregar")
    public String procesar(@ModelAttribute("artista") Artista artista) {
        servicio.agregarArtista(artista);
        return "redirect:/artistas";
    }
    @GetMapping("/artistas/eliminar/{idArtista}")
    public String procesarEliminarArtista(@PathVariable Long idArtista) {
        servicio.eliminaArtista(idArtista);
        return "redirect:/artistas";
    }

}
