package cl.securityapp.web.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import cl.securityapp.web.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
	User findUserByUsername(String username);

}
