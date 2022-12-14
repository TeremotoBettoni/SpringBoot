package cl.generation.web.services;

import java.util.List;
import java.util.Optional;

import cl.generation.web.models.Usuario;

public interface UsuarioService {
	// definir metodos para crud usuario
	public Boolean guardarUsuario(Usuario usuario);
	public String eliminarUsuario(Long id);
	public String actializarUsuario(Usuario usuario);
	public String obtenerUsuario(Long id);
	
	public Optional<Usuario> obtenerDatosUsuario(Long id);
	
	/****************************************************************************/
	public Usuario obtenerDatosUsuario2(Long id);
	
	public List<Usuario> listaUsuarios();
	
	// metodo login
	public Boolean ingresoUsuario(String email, String password);
	// metodo para obtener datos de usuario desde cache o navegador
	public Usuario obtenerUsuarioEmail(String email);
	
}
