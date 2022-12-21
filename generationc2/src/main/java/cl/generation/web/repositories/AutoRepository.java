package cl.generation.web.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import cl.generation.web.models.Auto;
@Repository
public interface AutoRepository extends JpaRepository<Auto, Long> {

	Auto findByMarca(String marca);
	
	// logica de manipuelacion de datos (CRUD+)
	//JPQL
	
	//obtener lista de autos por marca
	@Query("SELECT a FROM Auto a WHERE a.marca = ?1")
	List<Auto> findAllByMarca(String marca);

	//Query comun
	@Query(value="select * from autos a where a.marca = ?1", nativeQuery = true)
	List<Auto> findAllByMarcaComun(String marca);
	
	//obtener lista de autos por marca y color
	@Query("SELECT a FROM Auto a WHERE a.marca = ?1 and a.color = ?2")
	List<Auto> findAllByMarca(String marca, String color);
	
	// y si queremos buscar por el ususario
	@Query("SELECT a FROM Auto a WHERE a.usuario.nombre = ?1")
	List<Auto> findAllByUsuario(String nombre);


	
	// pero si quiero traer un objeto hay que tener cuidado pues dentro del lint debere llamar al Objeto[]
	
}
