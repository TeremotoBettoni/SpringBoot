package cl.yose.web.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
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
	
	@Override
	public Boolean guardarUsuario(Usuario usuario) {
		// validar el usuario segun su email
				Usuario retornoUsuario = usuarioRepository.findByEmail(usuario.getEmail());
				if (retornoUsuario == null) {
					//1234 -> 1231245321425fas4352
					String passHashed = BCrypt.hashpw(usuario.getContraseña(), BCrypt.gensalt());
					//reemplazando el valor por el hash
					usuario.setContraseña(passHashed);

					usuarioRepository.save(usuario);
					return true;
				}else {
					return false;
				}
	}
	
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
	
	@Override
	public Boolean ingresoUsuario(String email, String contraseña) {
		System.out.println(email + " " + contraseña);
		Usuario usuario = usuarioRepository.findByEmail(email);
		
		if (usuario!=null) { // existe el email en bd
			// comparamos contraseña
			// opcion corta
			// return BCrypt.checkpw(password, usuario.getPassword());
			// opcion larga
			Boolean resultadoPwd = BCrypt.checkpw(contraseña, usuario.getContraseña());
			// resultadoPwd == true; son iguales --> resultadoPwd == false; password distinta
			if (resultadoPwd) {
				return true;
			}else {
				return false;
			}
			
		}else { // no existe el email en bd
			return false;
		}
		
	}

}
