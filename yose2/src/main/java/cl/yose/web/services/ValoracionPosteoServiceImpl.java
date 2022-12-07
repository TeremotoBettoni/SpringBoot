package cl.yose.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.ValoracionPosteo;
import cl.yose.web.repositories.ValoracionPosteoRepository;

@Service
public class ValoracionPosteoServiceImpl implements ValoracionPosteoServices {
	
	@Autowired
	public ValoracionPosteoRepository valoracionPosteoRepository;
	
	@Override
	public ValoracionPosteo guardarValoracion(ValoracionPosteo valoracion) {
		// TODO Auto-generated method stub
		return valoracionPosteoRepository.save(valoracion);
	}
	
	@Override
	public String eliminarValoracion(Long id) {
		Boolean existe = valoracionPosteoRepository.existsById(id);
		if (existe) {
			valoracionPosteoRepository.deleteById(id);
		} else {
			return "valoracion no existe";
		}

		existe = valoracionPosteoRepository.existsById(id);
		if (existe) {
			return "no se eliminó tu valoración a este comentario";
		}
		return "se eliminó tu valoración a este comentario";
	}

	@Override
	public String actualizarValoracion(ValoracionPosteo valoracion) {
		Boolean existe = valoracionPosteoRepository.existsById(valoracion.getId());
		if (existe) {
			valoracionPosteoRepository.save(valoracion);
			return "tu valoracion se ha actualizado con exito";
		}
		return "No se puede actualizar tu valoracion";
	}

	@Override
	public ValoracionPosteo obtenerValoracion(Long id) {
		Boolean existe = valoracionPosteoRepository.existsById(id);
		if (existe) {
			ValoracionPosteo valoracion = valoracionPosteoRepository.findById(id).get();
			return valoracion;
		}
		return null;
	}

	@Override
	public List<ValoracionPosteo> listaValoraciones() {
		return valoracionPosteoRepository.findAll();
	}

}