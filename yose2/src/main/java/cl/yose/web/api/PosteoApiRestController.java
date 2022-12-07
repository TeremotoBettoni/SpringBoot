package cl.yose.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.Posteo;
import cl.yose.web.services.PosteoServiceImpl;


@RestController
public class PosteoApiRestController {
	
	@Autowired
	private PosteoServiceImpl postServiceImpl;
	
	// http://localhost:9084/guardar/posteo
	@RequestMapping("/guardar/posteo")
	public Posteo guardarPosteo(@RequestBody Posteo posteo) {
		
		// http://localhost:8080/guardar/posteo
		
		return postServiceImpl.guardarPosteo(posteo);
	}
	
	/****************************************************************************/
	// ahora creamos la de eliminar
	
	// http://localhost:8080/eliminar/posteo
	@RequestMapping("/eliminar/posteo")
	public String eliminarPosteo(@RequestParam(value = "id", required = false) Long id) {

		return postServiceImpl.eliminarPosteo(id);
	}
	
	/****************************************************************************/
	// ahora para actualizar

	// http://localhost:8080/actualizar/posteo
	@RequestMapping("/actualizar/posteo")
	public String actializarPosteo(@RequestBody Posteo posteo) {
		// validacion logica
		if (posteo.getId() != null){
			String mensaje=postServiceImpl.actializarPosteo(posteo);
			return mensaje;
		}
		return "No se actualizara ningun usuario";
	}
	
	/****************************************************************************/
	// ahora si queremos obtener un usuario
	
	// http://localhost:8080/obtenerdato/posteo
	@RequestMapping("/obtenerdato/posteo")
	public Posteo obtenerPosteo(@RequestParam(value = "id", required = true) Long id) {
		
		return postServiceImpl.obtenerPosteo(id);
	}
	
	/****************************************************************************/
	// listar todos los usuarios
	
	// http://localhost:8080/listar/usuario
	@GetMapping("/listar/posteo")
	public List<Posteo> listaPosteo(){
		return postServiceImpl.listaPosteo();
	}
	
}
