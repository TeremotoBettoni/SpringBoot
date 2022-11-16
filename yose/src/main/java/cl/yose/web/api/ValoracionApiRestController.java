package cl.yose.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.Valoracion;
import cl.yose.web.services.ValoracionServiceImpl;

@RestController
public class ValoracionApiRestController {
	
	@Autowired
	private ValoracionServiceImpl valoracionServiceImpl;

	// http://localhost:8080/guardar/valoracion
	@RequestMapping("/guardar/valoracion")
	public Valoracion guardarValoracion(@RequestBody Valoracion valoracion) {
		return valoracionServiceImpl.guardarValoracion(valoracion);
	}
}
