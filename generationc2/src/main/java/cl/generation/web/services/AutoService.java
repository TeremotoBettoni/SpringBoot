package cl.generation.web.services;

import java.util.List;


import cl.generation.web.models.Auto;

public interface AutoService {
	public Auto guardarAuto(Auto auto);
	public Auto obtenerAuto(Long id);
	public List<Auto> listaAuto();
	public Auto obtenerAutoNombre(String marca);
	public List<Auto> findAllByUsuario(String nombre);
	
	
}
