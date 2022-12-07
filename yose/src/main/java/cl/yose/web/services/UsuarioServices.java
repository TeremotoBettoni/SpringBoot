package cl.yose.web.services;

import java.util.List;
import java.util.Optional;

import cl.yose.web.models.Usuario;

public interface UsuarioServices {
		public Boolean guardarUsuario(Usuario usuario);
		public Optional<Usuario> getUsuarioById(Long id);
		//public Usuario guardarUsuario(Usuario usuario);
		public String eliminarUsuario(Long id);
		public String actializarUsuario(Usuario usuario);
		public Optional<Usuario> obtenerDatosUsuario(Long id);
		public List<Usuario> listaUsuarios();
		
		// metodo login
		public Boolean ingresoUsuario(String email, String contraseña);
}
