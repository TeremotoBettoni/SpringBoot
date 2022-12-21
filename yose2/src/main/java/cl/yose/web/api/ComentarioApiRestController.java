package cl.yose.web.api;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.Comentario;
import cl.yose.web.models.Posteo;
import cl.yose.web.models.Usuario;
import cl.yose.web.services.ComentarioServiceImpl;
import cl.yose.web.services.PosteoServiceImpl;
import cl.yose.web.services.UsuarioServiceImpl;

@RestController
public class ComentarioApiRestController {
	@Autowired
	PosteoServiceImpl posteoServiceImpl;
	
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
	@Autowired
	ComentarioServiceImpl comentarioServiceImpl;

	@RequestMapping("/guardar/comentario") //El Api es para enviar parámetros a un sistema externo. Ej: React
	public Comentario guardarComentario(@RequestParam("texto") String texto,
			@RequestParam("posteo") Long id,
			HttpSession session) {
		String email = (String) session.getAttribute("usuarioEmail");
		Usuario usuario = usuarioServiceImpl.obtenerUsuarioEmail(email);
		
		Posteo posteo = posteoServiceImpl.obtenerPosteo(id);
		System.out.println(posteo.getId() + " " + posteo.getTitulo());
		
		Comentario comentario = new Comentario();
		comentario.setTexto(texto);
		comentario.setPosteo(posteo);
		comentario.setUsuario(usuario);
			
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
