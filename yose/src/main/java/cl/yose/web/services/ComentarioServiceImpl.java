package cl.yose.web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.Comentario;
import cl.yose.web.repositories.ComentarioRepository;

@Service
public class ComentarioServiceImpl implements ComentarioService{

	@Autowired
	private ComentarioRepository comentarioRepository;

	@Override
	public Comentario guardarComentario(Comentario comentario) {
		return comentarioRepository.save(comentario);
	}
	
}
