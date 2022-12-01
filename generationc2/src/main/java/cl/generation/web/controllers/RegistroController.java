package cl.generation.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.generation.web.models.Usuario;
import cl.generation.web.services.UsuarioServiceImpl;

@Controller
@RequestMapping("/registro")
public class RegistroController {
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	// http://localhost:8080/registro/usuario

	// capturar la url
	@GetMapping("/usuario")
	public String mostrarFormulario() {
		// desplegar el jsp (controlador)
		return "registro.jsp";
	}

	// llenamos el formulario (vista)
	// enviamos el formulario (vista) al controlador
	// capturamos la url (controlador) http://localhost:8080/registro/usuario

	@PostMapping("/usuario")
	// capturar los parametros (controlador)
	public String guardarFormulario(@RequestParam("nombre") String nombre, @RequestParam("apellido") String apellido,
			@RequestParam("nick") String nick, @RequestParam("correo") String correo, @RequestParam("pass") String pass,
			@RequestParam("pass2") String pass2, Model model) { // model nos permite enviar respuestas o traspasar info
																// desde el back al fron
		// equals es para comparar strings
		if (pass.equals(pass2)) {
			// instanciamos un objeto usuario
			Usuario usuario = new Usuario();
			usuario.setNombre(nombre);
			usuario.setApellido(apellido);
			usuario.setNick(nick);
			usuario.setEmail(correo);
			usuario.setPassword(pass);
			usuario.setPassword2(pass2);

			// enviar a base de datos
			Boolean resultado = usuarioServiceImpl.guardarUsuario(usuario);
			if (resultado) {// si es verdadero
				model.addAttribute("msgOk", "Registro exitoso");
				return "login.jsp"; // enviar a una vista
			} else {
				model.addAttribute("msgError", "Email ya registrado");
				return "registro.jsp";
			}

		} else {
			model.addAttribute("msgError", "Password distintos");
			return "registro.jsp";
		}

	}

	// desplegar el jsp
	// http://localhost:8080/registro/login
	@GetMapping("/login") // solo para peticiones de ruta
	public String login() {
		return "login.jsp";
	}

	@PostMapping("/login") // para capturar ruta
	public String ingresoUsuario(@RequestParam("email") String email, @RequestParam("pass") String pass, Model model) {

		Boolean resultadoLogin = usuarioServiceImpl.ingresoUsuario(email, pass);

		if (resultadoLogin) { // resultadoLogin == true, login correcto
			return "redirect:/home";
		} else { // resultadoLogin == false, login incorrecto
			model.addAttribute("msgError", "email o password invalidos o no existen");
			return "login.jsp";
		}

	}

}
