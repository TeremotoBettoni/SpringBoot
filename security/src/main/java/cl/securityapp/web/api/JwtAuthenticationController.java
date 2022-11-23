package cl.securityapp.web.api;

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

import cl.securityapp.web.models.User;
import cl.securityapp.web.models.UserDTO;
import cl.securityapp.web.security.JwtUtil;
import cl.securityapp.web.services.JwtUserDetailsService;
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

		Authentication authentication = new UsernamePasswordAuthenticationToken(userAuthDTO.username,
				userAuthDTO.password);
		SecurityContextHolder.getContext().setAuthentication(authentication);

		System.out.println(authentication.toString());

		UserDTO user = toDTO(jwtUserDetailsService.findUserByUsername(userAuthDTO.getUsername()));
		UserDetails userDetails = jwtUserDetailsService.loadUserByUsername(user.getUsername());
		String jwtToken = jwtUtil.generateToken(userDetails);

		return new ResponseEntity<>(new AuthResponseDTO(jwtToken), HttpStatus.OK);// el Ok puede cambiar segun el mensaje que queramos que arroje
	}
	
	

	@RequestMapping(value = "/register", method = RequestMethod.POST)//post es porque se le pasaran los datos
	public ResponseEntity<?> saveUser(@RequestBody UserDTO user) throws Exception {
		String passwordEncriptada = encoder.encode(user.getPassword());
		user.setPassword(passwordEncriptada);
		jwtUserDetailsService.save(user);
		return new ResponseEntity<>(user, HttpStatus.CREATED);
	}

	private UserDTO toDTO(User user) {
		return UserDTO.builder().username(user.getUsername()).password(user.getPassword()).build();
	}

	@Getter
	@Setter
	@Builder
	public static class UserAuthDTO {
		@NotNull
		private String username;
		@NotNull
		private String password;
	}

	@Getter
	@Setter
	@Builder
	public static class AuthResponseDTO {
		private String jwt;
	}
}
