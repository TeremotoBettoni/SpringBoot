package cl.yose.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.yose.web.models.Usuario;


@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long>{

}
