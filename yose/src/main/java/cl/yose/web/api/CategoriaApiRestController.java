package cl.yose.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.Categoria;
import cl.yose.web.services.CategoriaServiceImpl;

@RestController
public class CategoriaApiRestController {


	@Autowired
	private CategoriaServiceImpl categoriaServiceImpl;
	
	@RequestMapping("guardar/categoria")
	public Categoria guardarCategoria(@RequestBody Categoria categoria) {
		
		// http://localhost:8080/guardar/categoria
		return categoriaServiceImpl.guardarCategoria(categoria);
	}
}