package cl.yose.web.services;

import java.util.List;

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
	
	@Override
	public String eliminarComentario(Long id) {
		Boolean existe = comentarioRepository.existsById(id);

		if (existe) {
			comentarioRepository.deleteById(id);
		} else {
			return "El comentario no existe";
		}

		existe = comentarioRepository.existsById(id);
		if (existe) {
			return "Comentario no eliminado";
		}

		return "El comentario ha sido eliminado";
	}

	
	@Override
	public Comentario obtenerComentario(Long id) {
		Boolean existe= comentarioRepository.existsById(id);
		
		if(existe) {
			Comentario comentario= comentarioRepository.findById(id).get();
			return comentario;
		}
		return null;
	}

	public List<Comentario> listaComentario() {
		
		return comentarioRepository.findAll();
	}
	
	
}