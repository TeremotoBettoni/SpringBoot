package cl.generation.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.generation.web.models.Rol;
import cl.generation.web.models.Usuario;
import cl.generation.web.services.RolServiceImpl;

@RestController
public class RolApiRestController {
	@Autowired
	private RolServiceImpl rolServiceImpl;
	
	/****************************************************************************/
	/*@RequestMapping("/obtener/rol")
	public Rol obtenerRol(@RequestParam(value = "id", required = true) Long id) {
		Rol rol = rolServiceImpl.obtenerRol(id);
		// http://localhost:8080/obtener/rol
		
		return rol;
	}*/
	
	@RequestMapping("/obtener/rol")
	public Rol obtenerUsuario(@RequestParam(value="id",required = true) Long id) {
		Rol rol = rolServiceImpl.obtenerRol(id);
		//uso de Lazy
		//obtenber roles de usuarios
		List<Usuario> usuarios= rol.getListaUsuarios();
		for (Usuario usuario : usuarios) {
			System.out.println(usuario.getNombre());
		}
		return rol;
	}

}
