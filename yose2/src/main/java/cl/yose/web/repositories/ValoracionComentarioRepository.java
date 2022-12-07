package cl.yose.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.yose.web.models.ValoracionComentario;

@Repository
public interface ValoracionComentarioRepository extends JpaRepository<ValoracionComentario, Long>{

}
