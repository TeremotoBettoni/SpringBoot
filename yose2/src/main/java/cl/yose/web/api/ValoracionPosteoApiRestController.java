package cl.yose.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.ValoracionPosteo;
import cl.yose.web.services.ValoracionPosteoServiceImpl;

@RestController
public class ValoracionPosteoApiRestController {

	@Autowired
	private ValoracionPosteoServiceImpl valoracionPosteoServiceImpl;

	// http://localhost:8080/guardar/valoracion
	@RequestMapping("/guardar/valoracion")
	public ValoracionPosteo guardarValoracion(@RequestBody ValoracionPosteo valoracion) {
		return valoracionPosteoServiceImpl.guardarValoracion(valoracion);
	}
	
	// http://localhost:8080/eliminar/valoracionpost
		@RequestMapping("/eliminar/valoracionpost")
		public String eliminarValoracion(@RequestParam(value = "id", required = false) Long id) {

			return valoracionPosteoServiceImpl.eliminarValoracion(id);
		}

		// http://localhost:8080/actualizar/valoracioncomentario
		@RequestMapping("/actualizar/valoracionpost")
		public String actualizarValoracion(@RequestBody ValoracionPosteo valoracion) {
			// validacion logica
			if (valoracion.getId() != null) {
				String mensaje = valoracionPosteoServiceImpl.actualizarValoracion(valoracion);
				return mensaje;
			}
			return "No se puede actualizar tu valoracion";
		}

		/****************************************************************************/

		// http://localhost:8080/obtener/valoracionpost
		@RequestMapping("/obtener/valoracionpost")
		public ValoracionPosteo obtenerValoracion(@RequestParam(value = "id", required = true) Long id) {

			return valoracionPosteoServiceImpl.obtenerValoracion(id);
		}

		/****************************************************************************/

		// http://localhost:8080/listar/valoracionpost
		@GetMapping("/listar/valoracionpost")
		public List<ValoracionPosteo> listaValoracion() {
			return valoracionPosteoServiceImpl.listaValoraciones();
		}
}
