package cl.yose.web.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import cl.yose.web.models.UserDTO;
import cl.yose.web.models.Usuario;
import cl.yose.web.repositories.UsuarioRepository;

@Service
public class JwtUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UsuarioRepository usuarioRepository;

	public Usuario findUsuarioByEmail(String email) {
		return usuarioRepository.findUsuarioByEmail(email);
	}
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Usuario usuario = usuarioRepository.findUsuarioByEmail(email);
		return new org.springframework.security.core.userdetails.User(usuario.getEmail(), usuario.getContraseña(),
				new ArrayList<>());
	}
	
	private Collection<? extends GrantedAuthority> getAuthorities(Usuario usuario) {
		String posteo = usuario.getPosteos().toString();
		return List.of(new SimpleGrantedAuthority("Posteo_" + posteo));
	}
	
	public Usuario save(UserDTO user) {
		Usuario newUser = new Usuario();
		newUser.setNombre(user.getNombre());
		newUser.setApellido(user.getApellido());
		newUser.setEmail(user.getEmail());
		newUser.setContraseña(user.getContraseña());
		return usuarioRepository.save(newUser);
	}

	
	
}
