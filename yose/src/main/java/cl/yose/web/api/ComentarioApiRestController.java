package cl.yose.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.Comentario;
import cl.yose.web.services.ComentarioServiceImpl;

@RestController
public class ComentarioApiRestController {
	@Autowired
	private ComentarioServiceImpl comentarioServiceImpl;
	
	@RequestMapping("/guardar/comentario")
	public Comentario guardarComentario (@RequestBody Comentario comentario) {
		return comentarioServiceImpl.guardarComentario(comentario);
	}
	
}
