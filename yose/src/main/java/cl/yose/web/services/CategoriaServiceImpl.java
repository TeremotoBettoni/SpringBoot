package cl.yose.web.services;

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

}
