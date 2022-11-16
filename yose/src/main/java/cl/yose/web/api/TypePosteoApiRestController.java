package cl.yose.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.TypePosteo;
import cl.yose.web.services.TypePosteoServiceImpl;

@RestController
public class TypePosteoApiRestController {
	
	@Autowired
	private TypePosteoServiceImpl typePosteoServiceImpl;

	// http://localhost:8080/guardar/typeposteo
	@RequestMapping("/guardar/typeposteo")
	public TypePosteo guardarTypePosteo(@RequestBody TypePosteo tipeposteo) {
		return typePosteoServiceImpl.guardarTypePosteo(tipeposteo);
	}
	

}
