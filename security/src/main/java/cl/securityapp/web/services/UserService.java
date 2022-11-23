package cl.securityapp.web.services;

import java.util.Optional;

import cl.securityapp.web.models.User;

public interface UserService {
	public Optional<User> getUserById(Long id);

}
