package cl.yose.web.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.yose.web.models.Categoria;
import cl.yose.web.models.Posteo;
import cl.yose.web.models.TypePosteo;
import cl.yose.web.models.Usuario;
import cl.yose.web.services.CategoriaServiceImpl;
import cl.yose.web.services.PosteoServiceImpl;
import cl.yose.web.services.TypePosteoServiceImpl;
import cl.yose.web.services.UsuarioServiceImpl;

@Controller
@RequestMapping("/home")
public class HomeController {
	@Autowired
	PosteoServiceImpl posteoServiceImpl;
	
	@Autowired
	CategoriaServiceImpl categoriaServiceImpl;
	
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
	@Autowired
	TypePosteoServiceImpl tipoPostServImpl;
	
	@GetMapping("")
	public String home(Model model, HttpSession session) {
		
		if(session.getAttribute("usuarioId")!=null) {
			String nombre = (String) session.getAttribute("usuarioNombre");
			
			List<Posteo> listaPosteos = posteoServiceImpl.listaPosteo();
			model.addAttribute("listaPosteos",listaPosteos);
			
			List<Categoria> listaCategorias = categoriaServiceImpl.listaCategorias();
			System.out.println("Lista de categorias" + listaCategorias);
			model.addAttribute("listaCategorias", listaCategorias);
			
			List<TypePosteo> listaTipoPosteo = tipoPostServImpl.listaTypePosteo();
			model.addAttribute("listaTipoPosteo", listaTipoPosteo);
			
			model.addAttribute("usuarioNombre", nombre);
			model.addAttribute("categoriaSeleccinada", null);
			return "home.jsp";
		} else {
			return "redirect:/registro/login";
		}
		
	}
	
	@PostMapping("")
	public String guardarPosteo(@RequestParam("titulo") String titulo,
			@RequestParam("texto") String texto,
			@RequestParam("url") String url,
			@RequestParam ("detalleCategoria") Long id,
			@RequestParam ("tipoPosteo") Long idTP,
			Model model,
			HttpSession session
			) {
		String email = (String) session.getAttribute("usuarioEmail");
		Usuario usuario = usuarioServiceImpl.obtenerUsuarioEmail(email);
		Categoria categoria = categoriaServiceImpl.obtenerCategoria(id);
		TypePosteo tipoPosteo = tipoPostServImpl.obtenerDatosTypePosteo(idTP);
		
		Posteo posteo= new Posteo();
		posteo.setCategoria(categoria);
		posteo.setTitulo(titulo);
		posteo.setTexto(texto);
		posteo.setUrl(url);
		posteo.setUsuario(usuario);
		posteo.setTypePosteo(tipoPosteo);
		
		posteoServiceImpl.guardarPosteo(posteo);
		model.addAttribute(posteo);
		return "redirect:/home";
	}
	
	@PostMapping("/categoria")
	public String buscarCategoria(@RequestParam ("categoriaSeleccionada") Long id, Model model) {
		
		List<Categoria> listaCategorias = categoriaServiceImpl.listaCategorias();
		model.addAttribute("listaCategorias", listaCategorias);
		
		List<Posteo> listaPosteos = posteoServiceImpl.buscarPorCategoria(id);
		model.addAttribute("listaPosteos",listaPosteos);

		return "home.jsp";
	}
	
	@GetMapping("/perfil")
	public String editarPerfil() {
		return "perfil.jsp";
	}

	
	
}
