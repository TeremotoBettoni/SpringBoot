package cl.generation.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.generation.web.models.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
// Aqui se hace la logica de manipulacion de datos (CRUD+)
	Usuario findByEmail(String email);
	Usuario findByNick(String nick);

}
