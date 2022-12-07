package cl.yose.web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.Imagen;
import cl.yose.web.repositories.ImagenRepository;

@Service
public class ImagenServiceImpl implements ImagenService{
	@Autowired
	private ImagenRepository imagenRepository;

	@Override
	public Imagen guardarImagen(Imagen imagen) {
		return imagenRepository.save(imagen);
	}

	@Override
	public String actualizarImagen(Imagen imagen) {
		Boolean existe = imagenRepository.existsById(imagen.getId());
		if (existe) {
			imagenRepository.save(imagen);
			return "Imagen actualizada";
		}
		return "Imagen subida";
	}

	@Override
	public String eliminarImagen(Long id) {
		Boolean existe = imagenRepository.existsById(id);
		if (existe) {
			imagenRepository.deleteById(id);
			return "Imagen eliminada";
		}else {
		return "Imagen no existe";
		}
	}
}
