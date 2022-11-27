package cl.yose.web.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.Usuario;
import cl.yose.web.repositories.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioServices {
	
	@Autowired
	public UsuarioRepository usuarioRepository;
	
	@Override
	public Optional<Usuario> getUsuarioById(Long id){
		Boolean exists = usuarioRepository.existsById(id);
		if (exists) {
			Optional<Usuario> usuario = usuarioRepository.findById(id);
			return usuario;
		}
		return null;
	}
	
	/*@Override
	public Usuario guardarUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		return usuarioRepository.save(usuario);
	}
	*/
	@Override
	public String eliminarUsuario(Long id) {
		Boolean existe = usuarioRepository.existsById(id);

		if (existe) {
			usuarioRepository.deleteById(id);
		} else {
			return "Usuario no existe en la tabla";
		}

		existe = usuarioRepository.existsById(id);
		if (existe) {
			return "Usuario no eliminado";
		}

		return "El usuario fue eliminado";
	}

	@Override
	public String actializarUsuario(Usuario usuario) {
		Boolean existe = usuarioRepository.existsById(usuario.getId());
		// validion si existe en base de datos
		if (existe) {
			usuarioRepository.save(usuario);
			return "Usuario actualizado con exito";
		}

		return "Usuario no actualizado";
	}

	@Override
	public Usuario obtenerDatosUsuario(Long id) {
		Boolean existe= usuarioRepository.existsById(id);
		
		if(existe) {
			Usuario user= usuarioRepository.findById(id).get();
			return user;
		}
		return null;
	}
	
	@Override
	public List<Usuario> listaUsuarios() {
		
		return usuarioRepository.findAll();
	}
	
	

}
