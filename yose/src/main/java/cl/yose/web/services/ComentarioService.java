package cl.yose.web.services;

import java.util.List;

import cl.yose.web.models.Comentario;

public interface ComentarioService {

	public Comentario guardarComentario(Comentario comentario);
	
	public String eliminarComentario(Long id);

	public Comentario obtenerComentario(Long id);
	
	public List<Comentario> listaComentario();
	
}
