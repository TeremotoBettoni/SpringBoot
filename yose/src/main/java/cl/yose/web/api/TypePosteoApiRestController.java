package cl.yose.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	// http://localhost:8080/obtener/tipos
	@RequestMapping("/obtener/tipos")
	public TypePosteo obtenerTypePosteo(@RequestParam(value = "id", required = true) Long id) {

		return typePosteoServiceImpl.obtenerDatosTypePosteo(id);
	}

	/****************************************************************************/
	// listar todos los usuarios

	// http://localhost:8080/listar/usuario
	@GetMapping("/listar/tipos")
	public List<TypePosteo> listaTypePosteo() {
		return typePosteoServiceImpl.listaTypePosteo();
	}

}
