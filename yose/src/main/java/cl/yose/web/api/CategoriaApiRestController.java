package cl.yose.web.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	// http://localhost:8080/obtener/categoria
	@RequestMapping("/obtener/categoria")
	public Categoria obtenerCategoria(@RequestParam(value = "id", required = true) Long id) {

		return categoriaServiceImpl.obtenerCategoria(id);
	}

	/****************************************************************************/
	// listar todas las categorias

	// http://localhost:8080/listar/categorias
	@GetMapping("/listar/categorias")
	public List<Categoria> listaCategorias() {
		return categoriaServiceImpl.listaCategorias();
	}

}