package cl.generation.web.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.generation.web.models.Auto;
import cl.generation.web.services.AutoServiceImpl;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	AutoServiceImpl autoServiceImpl; // inyectamos la dependencia de service pues nos interesa traer la lista de autos
	
	@GetMapping("")
	public String home(Model model) { // con model model se pasa informacion desde el controlador al jsp
		//obtener y almacenar en variable
		List<Auto> listaAuto = autoServiceImpl.listaAuto();
		// pasar lista de autos
		model.addAttribute("autos", listaAuto);
		// lista para cargar el selector
		List<Auto> listaSelectAutos= autoServiceImpl.listaAuto();
		model.addAttribute("listaSelectAutos", listaSelectAutos);

		return "home.jsp";
	}
	
	// localhost:9080/home -> post solo respondera al formulario
	@PostMapping("")
	public String filtar(@RequestParam("autoSeleccionado") Long id, Model model) { // el request se especifica el name del select en jsp
		List<Auto> listaAutos = new ArrayList<Auto>(); // creamos lista vacia
		Auto auto = autoServiceImpl.obtenerAuto(id);
		listaAutos.add(auto);// agrego el auto a la lista
		model.addAttribute("autos", listaAutos); //pasar lista de autos al jsp
		
		List<Auto> listaSelectAutos= autoServiceImpl.listaAuto();
		model.addAttribute("listaSelectAutos", listaSelectAutos);
		
		return "home.jsp";
	}
	
	
	@PostMapping("/nav")
	public String filtarNav(@RequestParam("marca") String marca, Model model) { // el request se especifica el name del select en jsp
		List<Auto> listaAutos = new ArrayList<Auto>(); // creamos lista vacia
		Auto auto = autoServiceImpl.obtenerAutoNombre(marca);
		listaAutos.add(auto);// agrego el auto a la lista
		model.addAttribute("autos", listaAutos); //pasar lista de autos al jsp
		
		List<Auto> listaSelectAutos= autoServiceImpl.listaAuto();
		model.addAttribute("listaSelectAutos", listaSelectAutos);
		
		return "home.jsp";
	}
}
