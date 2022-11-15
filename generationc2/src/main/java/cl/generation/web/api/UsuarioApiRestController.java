package cl.generation.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import cl.generation.web.models.Usuario;
import cl.generation.web.services.UsuarioServiceImpl;

@RestController
public class UsuarioApiRestController {
	// esto es para capturar los valores de una api
	@Autowired
	private UsuarioServiceImpl usuarioServiceImpl; // aqui creamos una variable del tipo UsuarioServiceImpl para hacer uso de los metodos

	public String guardarUsuario(@RequestBody Usuario usuario) {
		
		/**
		 * {
		 * nombre:"Teresa"
		 * correo:"mtbettoni@gmail.com"
		 * password: "secret"
		 * }
		 **/
		usuarioServiceImpl.guardarUsuario(usuario);
		return "";
	}

}
