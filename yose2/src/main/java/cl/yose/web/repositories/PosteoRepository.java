package cl.yose.web.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import cl.yose.web.models.Posteo;

@Repository
public interface PosteoRepository extends JpaRepository<Posteo, Long> {
	
	@Query("SELECT p FROM Posteo p WHERE p.categoria.id = ?1")
	List<Posteo> buscarPorCategoria(Long id);

	@Query ("SELECT p FROM Posteo p WHERE p.titulo LIKE %?1%"
			+ " OR p.usuario.nombre LIKE %?1%"
			+ " OR p.usuario.apellido LIKE %?1%"
			+ " OR p.categoria.detalleCategoria LIKE %?1%"
			+ " OR p.typePosteo.tipo LIKE %?1%")
			List<Posteo> buscarPorPalabra(String palabraClave);
}
