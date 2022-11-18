package cl.yose.web.services;

import java.util.List;

import cl.yose.web.models.Usuario;

public interface UsuarioServices {

		public Usuario guardarUsuario(Usuario usuario);
		public String eliminarUsuario(Long id);
		public String actializarUsuario(Usuario usuario);
		public Usuario obtenerDatosUsuario(Long id);
		public List<Usuario> listaUsuarios();
}
