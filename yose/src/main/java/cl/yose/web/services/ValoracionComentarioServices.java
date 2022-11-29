package cl.yose.web.services;

import java.util.List;

import cl.yose.web.models.ValoracionComentario;

public interface ValoracionComentarioServices {
	public ValoracionComentario guardarValoracion(ValoracionComentario valoracion);
	
	public String eliminarValoracion(Long id);
	
	public String actualizarValoracion(ValoracionComentario valoracion);
	
	public ValoracionComentario obtenerValoracion(Long id);
	
	public List<ValoracionComentario> listaValoraciones();
}
