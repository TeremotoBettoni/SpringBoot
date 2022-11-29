package cl.yose.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.ValoracionComentario;
import cl.yose.web.services.ValoracionComentarioServiceImpl;

@RestController
public class ValoracionComentarioApiRestController {
	
	@Autowired
	ValoracionComentarioServiceImpl valoracionComentarioServiceImpl;
	
	// http://localhost:8080/guardar/valoracion/comentario
	@RequestMapping("/guardar/valoracion/comentario")
	public ValoracionComentario guardarValoracion(@RequestBody ValoracionComentario valoracion) {
		return valoracionComentarioServiceImpl.guardarValoracion(valoracion);
	}
	
	// http://localhost:8080/eliminar/valoracioncomentario
	@RequestMapping("/eliminar/valoracioncomentario")
	public String eliminarValoracion(@RequestParam(value = "id", required = false) Long id) {

		return valoracionComentarioServiceImpl.eliminarValoracion(id);
	}
	
	// http://localhost:8080/actualizar/valoracioncomentario
		@RequestMapping("/actualizar/valoracioncomentario")
		public String actualizarValoracion(@RequestBody ValoracionComentario valoracion) {
			// validacion logica
			if (valoracion.getId() != null) {
				String mensaje=valoracionComentarioServiceImpl.actualizarValoracion(valoracion);
				return mensaje;
			}
			return "No se puede actualizar tu valoracion";
		}
		
		/****************************************************************************/
		
		// http://localhost:8080/obtener/valoracioncomentario
		@RequestMapping("/obtener/valoracioncomentario")
		public ValoracionComentario obtenerValoracion(@RequestParam(value = "id", required = true) Long id) {
			
			return valoracionComentarioServiceImpl.obtenerValoracion(id);
		}
		
		/****************************************************************************/
		
		// http://localhost:8080/listar/valoracioncomentarios
		@GetMapping("/listar/valoracioncomentario")
		public List<ValoracionComentario> listaValoracion(){
			return valoracionComentarioServiceImpl.listaValoraciones();
		}
}
