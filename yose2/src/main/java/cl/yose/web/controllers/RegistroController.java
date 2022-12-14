package cl.yose.web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.yose.web.models.Usuario;
import cl.yose.web.services.UsuarioServiceImpl;

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
	
	@PostMapping("/usuario")
	// capturar los parametros (controlador)
	public String guardarFormulario(@RequestParam("nombre") String nombre, 
			@RequestParam("apellido") String apellido, 
			@RequestParam("email") String email, 
			@RequestParam("contraseña") String contraseña,
			@RequestParam("contraseña2") String contraseña2, Model model) { // model nos permite enviar respuestas o traspasar info
																// desde el back al fron
		// equals es para comparar strings
		if (contraseña.equals(contraseña2)) {
			// instanciamos un objeto usuario
			Usuario usuario = new Usuario();
			usuario.setNombre(nombre);
			usuario.setApellido(apellido);
			usuario.setEmail(email);
			usuario.setContraseña(contraseña);
			usuario.setContraseña2(contraseña2);

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
			model.addAttribute("msgError", "contraseñas distintas");
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
		public String ingresoUsuario(@RequestParam("email") String email, @RequestParam("contraseña") String contraseña, 
				Model model, 
				HttpSession session
				) {

			Boolean resultadoLogin = usuarioServiceImpl.ingresoUsuario(email, contraseña);
			
			if (resultadoLogin) { // resultadoLogin == true, login correcto
				Usuario usuario = usuarioServiceImpl.obtenerUsuarioEmail(email);
				// guardar en cache para uso o identificacion del usuario una vez logueado para las demas funciones
				session.setAttribute("usuarioId", usuario.getId());
				session.setAttribute("usuarioEmail", usuario.getEmail());
				
				session.setAttribute("usuarioNombre", usuario.getNombre()+" " + usuario.getApellido());
				
				System.out.println("paso Loguion");
				return "redirect:/home";
			} else { // resultadoLogin == false, login incorrecto
				model.addAttribute("msgError", "email o contraseña invalidos");
				return "login.jsp";
			}

		}
		
		@RequestMapping("/logout")
		public String logout(HttpSession session) {
			if(session.getAttribute("usuarioId")!=null) {
				session.invalidate();// nos permite anular el login para cerrar secion 
			}
			return "redirect:/registro/login";// de esta manera una ves cerrada la secion no te permite ingresar de nuevo a home hasta que se logue primero
		}
	
}
