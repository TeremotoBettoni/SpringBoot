package cl.generation.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.generation.web.models.Rol;


@Controller // conectar con sistema
@RequestMapping ("/usuario") // ahora todas mis rutas tendran este prefijop
public class UsuarioController {
	
	// capturamos las rutas
	// el ("/") es para llamar a el localHost
	@RequestMapping ("/")
	public String getUsuario() {
		
		System.out.println("Metodo de obtener usuario");
		return "index.jsp";
	}
	
	// htps://localhost:8080/usuario/home
	@RequestMapping("/home")
	public String home() {
		System.out.println("El metodo home");
		return "home";
	}
	
	@RequestMapping("/teresa/bettoni")
	public String tbettoni() {
		System.out.println("El metodo de Teresa");
		return "teresa";
	}
	
	@RequestMapping("/rol")
	public Rol obtenerRol() {
		Rol rol = new Rol();
		rol.setNombre("ADMIN");
		rol.setDescripcion("Administra elo sistema");
		System.out.println("");
		return rol;
	}
}
