package cl.yose.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.yose.web.models.Valoracion;

@Repository
public interface ValoracionRepository extends JpaRepository<Valoracion, Integer>{

}
