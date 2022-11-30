package cl.generation.web.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.generation.web.models.Usuario;
import cl.generation.web.repositories.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService {
// Aqui se realiza toda la logica de negocio del sistema web
	@Autowired // con esto inyectamos aqui tambien nuestras dependencias con el repository
	UsuarioRepository usuarioRepository;

	@Override
	public Boolean guardarUsuario(Usuario usuario) {
		// validar el usuario segun su email
		Usuario retornoUsuario = usuarioRepository.findByEmail(usuario.getEmail());
		if (retornoUsuario == null) {
			//1234 -> 1231245321425fas4352
			String passHashed = BCrypt.hashpw(usuario.getPassword(), BCrypt.gensalt());
			//reemplazando el valor por el hash
			usuario.setPassword(passHashed);

			usuarioRepository.save(usuario);
			return true;
		}else {
			return false;
		}
		
		// aqui como cambiamos el valor a retornar, debemos cambiar el tipo de dato del
		// public por Usuario, al igual que en UsuarioService
		
	}

	/****************************************************************************/
	@Override
	public String eliminarUsuario(Long id) {
		// consultamos si existe el id

		Boolean existe = usuarioRepository.existsById(id);

		if (existe) {// y solo si existe ingresamos y eliminamos
			// elimino el usuario paqsando el id
			usuarioRepository.deleteById(id);
		} else {
			return "Usuario no existe en la tabla";
		}

		existe = usuarioRepository.existsById(id);
		if (existe) {
			return "Usuario no eliminado";
		}

		return "El usuario fue eliminado";

		// validar si fue eliminado o no el registro
		// Optional<Usuario> usuario = usuarioRepository.findById(id);
		// si es distinto de nulo, no fue eliminado
		/*
		 * if(usuario!=null) { return "Usuario no eliminado"; }
		 * 
		 * return "El usuario fue eliminado";
		 */
	}

	/****************************************************************************/
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
	/****************************************************************************/
	@Override
	public String obtenerUsuario(Long id) {
		// consultamos si existe el id

		Boolean existe = usuarioRepository.existsById(id);

		if (existe) {
			return "El usuario si existe";
		} else {
			return "Usuario no existe en la tabla";
		}
	}
	/****************************************************************************/
	@Override
	public Optional<Usuario> obtenerDatosUsuario(Long id) {
		Optional<Usuario> mensaje= usuarioRepository.findById(id);
		return mensaje;
		
	}
	
	/****************************************************************************/
	@Override
	public Usuario obtenerDatosUsuario2(Long id) {
		
		
		Boolean existe= usuarioRepository.existsById(id);
		
		if(existe) {
			Usuario user= usuarioRepository.findById(id).get();
			return user;
		}
		return null;
		
	}

	/****************************************************************************/
	// listar todos los usuarios
	@Override
	public List<Usuario> listaUsuarios(){
		// el findAll es para buscar todos
		return usuarioRepository.findAll();
	}
	
	

}
