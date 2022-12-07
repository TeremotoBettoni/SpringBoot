package cl.yose.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.ValoracionComentario;
import cl.yose.web.repositories.ValoracionComentarioRepository;

@Service
public class ValoracionComentarioServiceImpl implements ValoracionComentarioServices {
	
	@Autowired
	public ValoracionComentarioRepository valoracionComentarioRepository;

	@Override
	public ValoracionComentario guardarValoracion(ValoracionComentario valoracion) {
		return valoracionComentarioRepository.save(valoracion);
	}

	@Override
	public String eliminarValoracion(Long id) {
		Boolean existe = valoracionComentarioRepository.existsById(id);
		if (existe) {
			valoracionComentarioRepository.deleteById(id);
		}else{
			return "valoracion no existe";
		}
		
		existe = valoracionComentarioRepository.existsById(id);
		if (existe) {
			return "no se eliminó tu valoración a este comentario";
		}
			return "se eliminó tu valoración a este comentario";
	}
	
	@Override
	public String actualizarValoracion(ValoracionComentario valoracion) {
		Boolean existe = valoracionComentarioRepository.existsById(valoracion.getId());
		if (existe) {
			valoracionComentarioRepository.save(valoracion);
			return "tu valoracion se ha actualizado con exito";
		}
		return "No se puede actualizar tu valoracion";
	}
	
	@Override
	public ValoracionComentario obtenerValoracion(Long id) {
		Boolean existe = valoracionComentarioRepository.existsById(id);
		if (existe) {
			ValoracionComentario valoracion = valoracionComentarioRepository.findById(id).get();
			return valoracion;
		}
		return null;
	}

	@Override
	public List<ValoracionComentario> listaValoraciones() {
		return valoracionComentarioRepository.findAll();
	}
}
