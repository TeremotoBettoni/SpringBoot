package cl.securityapp.web.api;

import java.util.Optional;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cl.securityapp.web.models.User;
import cl.securityapp.web.services.UserServiceImpl;
import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class UserApiRestController {
	private final UserServiceImpl userServiceImpl;


    @RequestMapping("/obtener/usuario")
    public Optional<User> obtenerUsuario(@RequestParam(value="id",required = true) Long id) {
        return userServiceImpl.getUserById(id);
    }

}
