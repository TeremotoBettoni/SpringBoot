package cl.yose.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.Categoria;
import cl.yose.web.repositories.CategoriaRepository;
@Service
public class CategoriaServiceImpl implements CategoriaServices {
	
	@Autowired
	public CategoriaRepository categoriaRepository;
	
	@Override
	public Categoria guardarCategoria(Categoria categoria) {
		return categoriaRepository.save(categoria);
	}
	
	@Override
	public String actualizarCategoria(Categoria categoria) {
		Boolean existe = categoriaRepository.existsById(categoria.getId());
		// validion si existe en base de datos
		if (existe) {
			categoriaRepository.save(categoria);
			return "Categoría actualizada con exito";
		}

		return "No se pudo actualizar la categoría";
	}

	@Override
	public Categoria obtenerCategoria(Long id) {
		Boolean existe= categoriaRepository.existsById(id);
		
		if(existe) {
			Categoria categoria= categoriaRepository.findById(id).get();
			return categoria;
		}
		return null;
	}
	
	@Override
	public List<Categoria> listaCategorias() {
		
		return categoriaRepository.findAll();
	}

}
