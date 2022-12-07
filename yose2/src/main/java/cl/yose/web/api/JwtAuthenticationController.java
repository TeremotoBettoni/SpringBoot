package cl.yose.web.api;
/*
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.UserDTO;
import cl.yose.web.models.Usuario;
import cl.yose.web.security.JwtUtil;
import cl.yose.web.services.JwtUserDetailsService;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@RestController
@CrossOrigin
@AllArgsConstructor
@RequestMapping("/auth")
public class JwtAuthenticationController {
	
	private final PasswordEncoder encoder;
	private final JwtUtil jwtUtil;
	
	private final JwtUserDetailsService jwtUserDetailsService;
	
	@PostMapping("/login")
	public ResponseEntity<?> createAuthenticationToken(@Valid @RequestBody UserAuthDTO userAuthDTO) throws Exception {

		Authentication authentication = new UsernamePasswordAuthenticationToken(userAuthDTO.email, userAuthDTO.contraseña);
		SecurityContextHolder.getContext().setAuthentication(authentication);

		System.out.println(authentication.toString());

		UserDTO user = toDTO(jwtUserDetailsService.findUsuarioByEmail(userAuthDTO.getEmail()));
		UserDetails userDetails = jwtUserDetailsService.loadUserByUsername(user.getEmail());
		String jwtToken = jwtUtil.generateToken(userDetails);

		return new ResponseEntity<>(new AuthResponseDTO(jwtToken), HttpStatus.OK);// el Ok puede cambiar segun el mensaje que queramos que arroje
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)//post es porque se le pasaran los datos
	public ResponseEntity<?> saveUsuario(@RequestBody UserDTO user) throws Exception {
		String contraseñaEncriptada = encoder.encode(user.getContraseña());
		user.setContraseña(contraseñaEncriptada);
		jwtUserDetailsService.save(user);
		return new ResponseEntity<>(user, HttpStatus.CREATED);
	}
	
	private UserDTO toDTO(Usuario usuario){
		return UserDTO.builder().email(usuario.getEmail()).contraseña(usuario.getContraseña()).build();
	}
	
	
	@Getter
	@Setter
	@Builder
	public static class UserAuthDTO {
		@NotNull
		private String email;
		@NotNull
		private String contraseña;
	}

	@Getter
	@Setter
	@Builder
	public static class AuthResponseDTO {
		private String jwt;
	}
	

}*/
