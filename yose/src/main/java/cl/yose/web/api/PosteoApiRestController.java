package cl.yose.web.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cl.yose.web.models.Posteo;
import cl.yose.web.services.PosteoServiceImplement;


@RestController
public class PosteoApiRestController {
	
	@Autowired
	private PosteoServiceImplement postServiceImpl;
	
	// http://localhost:9084/guardar/posteo
	@RequestMapping("/guardar/posteo")
	public Posteo guardarPosteo(@RequestBody Posteo posteo) {
		
		// http://localhost:8080/guardar/posteo
		
		return postServiceImpl.guardarPosteo(posteo);
	}
}
