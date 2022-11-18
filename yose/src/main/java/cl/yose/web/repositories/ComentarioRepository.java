package cl.yose.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.yose.web.models.Comentario;

@Repository
public interface ComentarioRepository extends JpaRepository<Comentario, Long>{

}
