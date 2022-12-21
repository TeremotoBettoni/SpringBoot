package cl.yose.web.repositories;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.yose.web.models.Posteo;

@Repository
public interface PosteoRepository extends JpaRepository<Posteo, Long> {

	List<Posteo> findAllByCategoriaId(Long id, Sort by);



}
