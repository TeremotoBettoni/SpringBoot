package cl.generation.web.api;


import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ApiRestController {
	
	@RequestMapping("/hola")
	public String hola() {
		return "Hola api";
	}
	
	// para dinamicos seria
	// http://localhost:8080/api/edad/42
	// el numero al final puede ser cualquiera que queramos que capture la variable edad
	@RequestMapping("/edad/{edad}")
	public String rutaDinamica(@PathVariable("edad") int edad) {
		return "capturando edad:"+edad;
	}
	
	// http://localhost:8080/api/nombre/israel
	@RequestMapping("/nombre/{nombre}")
	public String capturaNombre(@PathVariable("nombre") String nombre) {
		return "capturando el nombre:"+nombre;
	}
	
	// http://localhost:8080/api/14/noviembre/2022
	@RequestMapping("/{dia}/{mes}/{año}")
	public String capturaFecha(@PathVariable("dia") int dia, @PathVariable("mes")String mes, @PathVariable("año")int año) {
		return "La fecha capturada es: "+dia+"/"+mes+"/"+año;
	}
	
	// http://localhost:8080/api/usuario?usuarioId=1
	// prticiones de tipo GET
	@RequestMapping("/usuario")
	public String parametro(@RequestParam(value="usuarioId", required=false) Integer id) {
		// las variables primitivas tienen por valor definodo 0
		// las variables del tipo objeto si pueden ser nulos, por eso vamvioamos id para que sea Integer en lugar de int
		if(id==null) {
			return "Parametro no existe";
		}else {
			return "Parametro por get "+id;
		}
	}
	
	// http://localhost:8080/api/usuario2?usuarioId=1&nombre=teresa
	@RequestMapping("/usuario2")
	public String parametro2(@RequestParam(value="usuarioId", required=false) Integer id, 
			@RequestParam(value="nombre", required=false) String nombre) {
		if(id==null) {
			return "Parametro no existe en parametro2";
		}else {
			return "Parametro por get "+id + " nombre "+nombre;
		}
	}
	
	
	
	
	
}
