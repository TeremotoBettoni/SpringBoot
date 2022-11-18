package cl.generation.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.generation.web.models.Rol;
import cl.generation.web.services.RolServiceImpl;

@RestController
public class RolApiRestController {
	@Autowired
	private RolServiceImpl rolServiceImpl;
	
	/****************************************************************************/
	@RequestMapping("/obtener/rol")
	public Rol obtenerRol(@RequestParam(value = "id", required = true) Long id) {

		// http://localhost:8080/obtener/rol
		return rolServiceImpl.obtenerRol(id);
	}
}
