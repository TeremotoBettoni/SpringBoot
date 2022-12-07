package cl.yose.web.services;

import java.util.List;

import cl.yose.web.models.Posteo;


public interface PosteoService {

	public Posteo guardarPosteo(Posteo posteo);
	public String eliminarPosteo(Long id);
	public String actializarPosteo(Posteo posteo);
	public Posteo obtenerPosteo(Long id);
	public List<Posteo> listaPosteo();

}
