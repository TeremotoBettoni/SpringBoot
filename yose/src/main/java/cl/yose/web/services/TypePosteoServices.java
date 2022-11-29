package cl.yose.web.services;

import java.util.List;

import cl.yose.web.models.TypePosteo;

public interface TypePosteoServices {

	public TypePosteo guardarTypePosteo(TypePosteo tipeposteo);
	

	public TypePosteo obtenerDatosTypePosteo(Long id);
	
	public List<TypePosteo> listaTypePosteo();
}
