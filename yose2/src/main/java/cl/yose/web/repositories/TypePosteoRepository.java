package cl.yose.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.yose.web.models.TypePosteo;

@Repository
public interface TypePosteoRepository extends JpaRepository<TypePosteo, Long> {

}
