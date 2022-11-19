package cl.yose.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.Imagen;
import cl.yose.web.services.ImagenServiceImpl;

@RestController
public class ImagenApiRestController {
	@Autowired
	private ImagenServiceImpl imagenServiceImpl;
	
	@RequestMapping("/guardar/imagen")
	public Imagen guardarImagen(@RequestBody Imagen imagen) {
		return imagenServiceImpl.guardarImagen(imagen);
	}
	
	@RequestMapping("/actualizar/imagen")
	public String actualizarImagen (@RequestBody Imagen imagen) {
		if(imagen.getId()!=null) {
			
			return imagenServiceImpl.actualizarImagen(imagen);
		}
		return "no se puede actualizar ninguna imagen";
		
	}
	
	@RequestMapping("/eliminar/imagen")
	public String eliminarImagen (@RequestParam (value="id",required = true) Long id) {
		return imagenServiceImpl.eliminarImagen(id);
	}
}
