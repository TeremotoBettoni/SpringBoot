package cl.generation.web.controllers;

import javax.servlet.http.HttpSession;

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
	@Autowired //inyeccion de dependencias
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
	public String ingresoUsuario(@RequestParam("email") String email, @
			RequestParam("pass") String pass, 
			Model model, 
			HttpSession session) { // el HttpSession permite hacer uso de informacion del cache de usuario para hacer uso de los datos

		Boolean resultadoLogin = usuarioServiceImpl.ingresoUsuario(email, pass);

		if (resultadoLogin) { // resultadoLogin == true, login correcto

			//Creamos el metodo para guardar datos de usuario
			Usuario usuario = usuarioServiceImpl.obtenerUsuarioEmail(email);
			// Guardamos información en sesion 
			session.setAttribute("usuarioId", usuario.getId());
			// y podemos hacer esto con cuelquier informacion del usuario que queramos contener
			session.setAttribute("usuarioEmail", email);
			// en el caso de que quiera confirmar el rol en la pagina para limitar los permisos
			session.setAttribute("usuarioRol", usuario.getRoles());
			session.setAttribute("usuarioNombre", usuario.getNombre()+" " + usuario.getApellido());
			
			return "redirect:/home";
		} else { // resultadoLogin == false, login incorrecto
			model.addAttribute("msgError", "email o password invalidos o no existen");
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
