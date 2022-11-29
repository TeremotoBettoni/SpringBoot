package cl.yose.web.services;

import java.util.List;

import cl.yose.web.models.Categoria;

public interface CategoriaServices {

	public Categoria guardarCategoria(Categoria categoria);
	
	public String actualizarCategoria(Categoria categoria);
	public Categoria obtenerCategoria(Long id);
	public List<Categoria> listaCategorias();
}
