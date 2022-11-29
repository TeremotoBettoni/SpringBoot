package cl.yose.web.services;

import java.util.List;

import cl.yose.web.models.ValoracionPosteo;

public interface ValoracionPosteoServices {
	public ValoracionPosteo guardarValoracion(ValoracionPosteo valoracion);
	
	public String eliminarValoracion(Long id);
	
	public String actualizarValoracion(ValoracionPosteo valoracion);
	
	public ValoracionPosteo obtenerValoracion(Long id);
	
	public List<ValoracionPosteo> listaValoraciones();
}