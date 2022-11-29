package cl.yose.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.Comentario;
import cl.yose.web.services.ComentarioServiceImpl;

@RestController
public class ComentarioApiRestController {
	@Autowired
	private ComentarioServiceImpl comentarioServiceImpl;

	@RequestMapping("/guardar/comentario")
	public Comentario guardarComentario(@RequestBody Comentario comentario) {
		return comentarioServiceImpl.guardarComentario(comentario);
	}

	// ahora creamos la de eliminar

	// http://localhost:8080/eliminar/comentario
	@RequestMapping("/eliminar/comentario")
	public String eliminarComentario(@RequestParam(value = "id", required = false) Long id) {

		return comentarioServiceImpl.eliminarComentario(id);
	}

	/****************************************************************************/
	// ahora si queremos obtener un comentario

	// http://localhost:8080/obtenerdato/comentario
	@RequestMapping("/obtener/comentario")
	public Comentario obtenerComentario(@RequestParam(value = "id", required = true) Long id) {

		return comentarioServiceImpl.obtenerComentario(id);
	}

	/****************************************************************************/
	// listar todos los comentarios

	// http://localhost:8080/listar/usuario
	@GetMapping("/listar/comentario")
	public List<Comentario> listaComentario() {
		return comentarioServiceImpl.listaComentario();
	}

}
