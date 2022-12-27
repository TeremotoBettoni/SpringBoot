package cl.yose.web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.yose.web.models.Comentario;
import cl.yose.web.models.Posteo;
import cl.yose.web.models.Usuario;
import cl.yose.web.services.ComentarioServiceImpl;
import cl.yose.web.services.PosteoServiceImpl;
import cl.yose.web.services.UsuarioServiceImpl;

@Controller
@RequestMapping("/comentarios")
public class ComentarioController {
	@Autowired
	PosteoServiceImpl posteoServiceImpl;
	
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
	@Autowired
	ComentarioServiceImpl comentarioServiceImpl;
	
	@PostMapping("")
	public String guardarComentario(@RequestParam("texto") String texto,
			@RequestParam("posteo") Long id,
			Model model,
			HttpSession session
			) {
		String email = (String) session.getAttribute("usuarioEmail");
		Usuario usuario = usuarioServiceImpl.obtenerUsuarioEmail(email);
		Posteo posteo = posteoServiceImpl.obtenerPosteo(id);
		
		Comentario comentario= new Comentario();
		comentario.setTexto(texto);
		comentario.setPosteo(posteo);
		comentario.setUsuario(usuario);
		
		comentarioServiceImpl.guardarComentario(comentario);
		return "redirect:/home";
	}

}
