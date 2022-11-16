package cl.generation.web.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.generation.web.models.Usuario;
import cl.generation.web.repositories.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService {
// Aqui se realiza toda la logica de negocio del sistema web
	@Autowired // con esto inyectamos aqui tambien nuestras dependencias con el repository
	private UsuarioRepository usuarioRepository;

	@Override
	public Usuario guardarUsuario(Usuario usuario) {
		// TODO Auto-generated method stub

		// aqui como cambiamos el valor a retornar, debemos cambiar el tipo de dato del
		// public por Usuario, al igual que en UsuarioService
		return usuarioRepository.save(usuario);
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
