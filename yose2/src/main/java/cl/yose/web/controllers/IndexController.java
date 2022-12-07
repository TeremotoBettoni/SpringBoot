package cl.yose.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	// http://localhost:8080/
	@GetMapping("/")
	public String home() {
		return "index.jsp";
	}
}
