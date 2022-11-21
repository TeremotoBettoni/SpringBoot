package cl.generation.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.generation.web.models.Pais;
import cl.generation.web.services.PaisServiceImpl;

@RestController
public class PaisApiRestController {
	@Autowired
	private PaisServiceImpl paisServiceImpl;
	
	@RequestMapping("/pais/guardar")
	public Pais guardarPais(@RequestBody Pais pais) {
		return paisServiceImpl.guardarPais(pais);
		
	}
}
