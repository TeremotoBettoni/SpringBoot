package cl.yose.web.api;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.services.UsuarioServiceImpl;
import cl.yose.web.models.Usuario;
import lombok.AllArgsConstructor;


@RestController
@AllArgsConstructor
public class UsuarioApiRestController {
	
	@Autowired
	private final UsuarioServiceImpl usuarioServiceImpl;
	
	/*// creamos la Query para guardar
	
	// http://localhost:8080/guardar/usuario
	@RequestMapping("/guardar/usuario")
	public Usuario guardarUsuario(@RequestBody Usuario usuario) {

			return usuarioServiceImpl.guardarUsuario(usuario);
		}
	*/
	/****************************************************************************/
	// ahora creamos la de eliminar
	
	// http://localhost:8080/eliminar/usuario
	@RequestMapping("/eliminar/usuario")
	public String eliminarUsuario(@RequestParam(value = "id", required = false) Long id) {

		return usuarioServiceImpl.eliminarUsuario(id);
	}
	
	/****************************************************************************/
	// ahora para actualizar

	// http://localhost:8080/actualizar/usuario
	@RequestMapping("/actualizar/usuario")
	public String actualizarUsuario(@RequestBody Usuario usuario) {
		// validacion logica
		if (usuario.getId() != null) {
			String mensaje=usuarioServiceImpl.actializarUsuario(usuario);
			return mensaje;
		}
		return "No se actualizara ningun usuario";
	}
	
	/****************************************************************************/
	// ahora si queremos obtener un usuario
	
	// http://localhost:8080/obtenerdato/usuario
	@RequestMapping("/obtenerdato/usuario")
	public Optional<Usuario> obtenerUsuario(@RequestParam(value = "id", required = true) Long id) {
		
		return usuarioServiceImpl.getUsuarioById(id);
	}
	
	/****************************************************************************/
	// listar todos los usuarios
	
	// http://localhost:8080/listar/usuario
	@GetMapping("/listar/usuario")
	public List<Usuario> listaUsuarios(){
		return usuarioServiceImpl.listaUsuarios();
	}
	
}
