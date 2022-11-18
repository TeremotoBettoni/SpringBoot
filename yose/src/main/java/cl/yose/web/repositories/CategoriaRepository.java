package cl.yose.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.yose.web.models.Categoria;

@Repository
public interface CategoriaRepository extends JpaRepository<Categoria, Long> {

}
