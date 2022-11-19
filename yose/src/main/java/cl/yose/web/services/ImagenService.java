package cl.yose.web.services;

import cl.yose.web.models.Imagen;

public interface ImagenService {
	public Imagen guardarImagen(Imagen imagen);
	public String actualizarImagen(Imagen imagen);
	public String eliminarImagen(Long id);
}
