package cl.yose.web.controllers;

import java.util.ArrayList;
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
import cl.yose.web.models.Usuario;
import cl.yose.web.services.CategoriaServiceImpl;
import cl.yose.web.services.PosteoServiceImpl;
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
	
	@GetMapping("")
	public String home(Model model, HttpSession session) {
		
		if(session.getAttribute("usuarioId")!=null) {
			String nombre = (String) session.getAttribute("usuarioNombre");
			
			List<Posteo> listaPosteo = posteoServiceImpl.listaPosteo();
			model.addAttribute("listaPosteos",listaPosteo);
			
			List<Categoria> listaCategorias = categoriaServiceImpl.listaCategorias();
			System.out.println("Lista de categorias" + listaCategorias);
			model.addAttribute("listaCategorias", listaCategorias);
			
			model.addAttribute("usuarioNombre", nombre);
			
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
			Model model,
			HttpSession session
			) {
		String email = (String) session.getAttribute("usuarioEmail");
		Usuario usuario = usuarioServiceImpl.obtenerUsuarioEmail(email);
		
		Categoria categoria = categoriaServiceImpl.obtenerCategoria(id);
		
		Posteo posteo= new Posteo();
		posteo.setCategoria(categoria);
		posteo.setTitulo(titulo);
		posteo.setTexto(texto);
		posteo.setUrl(url);
		posteo.setUsuario(usuario);
		
		posteoServiceImpl.guardarPosteo(posteo);
		model.addAttribute(posteo);
		return "redirect:/home";
	}
	
	@PostMapping("/categoria")
	public String buscarCategoria(@RequestParam ("detalleCategoria") Long id, Model model) {
		
		List<Categoria> listaCategorias = new ArrayList<Categoria>(); //lista vacía
		Categoria categoria = categoriaServiceImpl.obtenerCategoria(id);
		listaCategorias.add(categoria); //agregando categoria a la lista
		model.addAttribute("categorias", listaCategorias); //pasar la lista de autos al JSP
		return "home.jsp";
	}

	
	
}
