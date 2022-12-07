package cl.yose.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping ("/usuario")
public class UsuarioController {
	
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
}
