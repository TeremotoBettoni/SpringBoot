package cl.yose.web.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.yose.web.models.Posteo;

@Repository
public interface PosteoRepository extends JpaRepository<Posteo, Long> {


}
