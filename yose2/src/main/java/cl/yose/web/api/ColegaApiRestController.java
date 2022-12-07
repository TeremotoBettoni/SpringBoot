package cl.yose.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.Colega;
import cl.yose.web.services.ColegaServiceImpl;

@RestController
public class ColegaApiRestController {
	@Autowired
	private ColegaServiceImpl colegaServiceImpl;

	@RequestMapping("guardar/colega") // Edita la ruta del URL
	public Colega guardarColega(@RequestBody Colega colega) {
		return colegaServiceImpl.guardarColegas(colega);
	}
}
