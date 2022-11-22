package cl.yose.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
