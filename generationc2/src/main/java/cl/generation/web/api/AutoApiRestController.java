package cl.generation.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.generation.web.models.Auto;
import cl.generation.web.models.Usuario;
import cl.generation.web.services.AutoServiceImpl;
import cl.generation.web.services.UsuarioServiceImpl;

@RestController
public class AutoApiRestController {
	
	@Autowired
	private AutoServiceImpl autoServiceImpl;
	
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;// inyectamos esto p ara poder usarlo en esta clase
	
	@RequestMapping("/guardar/auto")
	public Auto guardarAuto(@RequestBody Auto auto, 
			@RequestParam(value = "usuarioId", required = false) Long usuarioId) {
		// http://localhost:8080/guardar/auto
		
		// ahora llamamos a usuarioImpl para que pueda ser usado
		
		Usuario usuario = usuarioServiceImpl.obtenerDatosUsuario2(usuarioId);
		// para hacer5 lo siguiente tendremos que agregar ahora si los geter y seter en el objeto Auto
		auto.setUsuario(usuario);
		
		
		
		return autoServiceImpl.guardarAuto(auto);
	}
	
	@RequestMapping("/obtener/auto")
	public Auto obtenerUsuario(@RequestParam(value="id",required = false) Long id) {
		// http://localhost:8080/obtener/auto
		return autoServiceImpl.obtenerAuto(id);
	}
}
