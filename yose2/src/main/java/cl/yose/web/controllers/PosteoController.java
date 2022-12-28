package cl.yose.web.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cl.yose.web.models.Categoria;
import cl.yose.web.models.Posteo;
import cl.yose.web.services.CategoriaServiceImpl;
import cl.yose.web.services.PosteoServiceImpl;
import cl.yose.web.services.UsuarioServiceImpl;

@Controller
public class PosteoController {
	@Autowired
	PosteoServiceImpl posteoServiceImpl;
	
	@Autowired
	CategoriaServiceImpl categoriaServiceImpl;
	
	@Autowired
	UsuarioServiceImpl usuarioServiceImpl;
	
	@PostMapping("/buscar")
	public String buscarPorPalabras(Model model,
			@RequestParam("palabraClave") String palabraClave) {
		
		List<Categoria> listaCategorias = categoriaServiceImpl.listaCategorias();
		model.addAttribute("listaCategorias", listaCategorias);
		
		List<Posteo> listaPosteoPorPalabra = posteoServiceImpl.listarPorPalabra(palabraClave);
		model.addAttribute("listaPosteos",listaPosteoPorPalabra);
		model.addAttribute("palabraClave", palabraClave);
		
		return "home.jsp";
	}
}
