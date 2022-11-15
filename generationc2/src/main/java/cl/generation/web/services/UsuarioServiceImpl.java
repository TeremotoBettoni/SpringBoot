package cl.generation.web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.generation.web.models.Usuario;
import cl.generation.web.repositories.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService{
// Aqui se realiza toda la logica de negocio del sistema web
	@Autowired // con esto inyectamos aqui tambien nuestras dependencias con el repository
	private UsuarioRepository usuarioRepository;
	
	@Override
	public Usuario guardarUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		
		// aqui como cambiamos el valor a retornar, debemos cambiar el tipo de dato del public por Usuario, al igual que en UsuarioService
		return usuarioRepository.save(usuario);
	}

}
