package cl.generation.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexControler {
	// http://localhost:9080/
	@GetMapping("/")
	public String home() {
		return "index.jsp";
	}
}
