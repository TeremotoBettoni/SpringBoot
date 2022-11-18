package cl.generation.web.api;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.generation.web.models.Usuario;
import cl.generation.web.services.UsuarioServiceImpl;

@RestController
public class UsuarioApiRestController {
	// esto es para capturar los valores de una api
	@Autowired
	private UsuarioServiceImpl usuarioServiceImpl; // aqui creamos una variable del tipo UsuarioServiceImpl para hacer
													// uso de los metodos

	/****************************************************************************/
	@RequestMapping("/guardar/usuario")
	public Usuario guardarUsuario(@RequestBody Usuario usuario) {

		// http://localhost:8080/guardar/usuario

		/**
		 * { nombre:"Teresa" correo:"mtbettoni@gmail.com" password: "secret" }
		 **/

		return usuarioServiceImpl.guardarUsuario(usuario);
	}

	/****************************************************************************/
	// http://localhost:8080/eliminar/usuario
	@RequestMapping("/eliminar/usuario")
	public String eliminarUsuario(@RequestParam(value = "id", required = false) Long id) {
		/*
		 * String respuesta = usuarioServiceImpl.eliminarUsuario(id); return respuesta;
		 */
		return usuarioServiceImpl.eliminarUsuario(id);
	}

	/****************************************************************************/
	// ahora si en lugar de eliminar quieres actualizar

	@RequestMapping("/actualizar/usuario")
	public String actualizarUsuario(@RequestBody Usuario usuario) {

		// http://localhost:8080/actualizar/usuario
		// validacion logica
		if (usuario.getId() != null) {
			// aqui aprovechamos para aplicasr otra forma de enviar la respuesta capturando en un String llamado mensaje
			String mensaje=usuarioServiceImpl.actializarUsuario(usuario);
			return mensaje;
		}
		return "No se actualizara ningun usuario";
	}
	
	/****************************************************************************/
	
	// ahora obtenemos el usuario a partir del id
	// http://localhost:8080/obtener/usuario
		@RequestMapping("/obtener/usuario")
		public String obtenerUsuario(@RequestParam(value = "id", required = false) Long id) {

			return usuarioServiceImpl.obtenerUsuario(id);
		}
	/****************************************************************************/
		
	// ahora obtenemos el usuario a partir del id
	// http://localhost:8080/obtenerdato/usuario
	@RequestMapping("/obtenerdato/usuario")
	public Optional<Usuario> obtenerDatosUsuario(@RequestParam(value = "id", required = true) Long id) {
			
		return usuarioServiceImpl.obtenerDatosUsuario(id);
	}
	
	/****************************************************************************/
	
	@RequestMapping("/obtenerdato2/usuario")
	public Usuario obtenerDatosUsuario2(@RequestParam(value = "id", required = true) Long id) {
		// http://localhost:8080/obtenerdato2/usuario
		
		return usuarioServiceImpl.obtenerDatosUsuario2(id);
	}
	
	/****************************************************************************/
	// listar todos los usuarios
	// http://localhost:8080/listar/usuario
	@GetMapping("/listar/usuario")
	public List<Usuario> listaUsuarios(){
		return usuarioServiceImpl.listaUsuarios();
	}
	

		
}
