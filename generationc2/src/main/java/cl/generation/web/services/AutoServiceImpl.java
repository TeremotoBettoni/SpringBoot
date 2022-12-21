package cl.generation.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.generation.web.models.Auto;
import cl.generation.web.repositories.AutoRepository;


@Service
public class AutoServiceImpl implements AutoService{
	@Autowired
	private AutoRepository autoRepository;

	@Override
	public Auto guardarAuto(Auto auto) {

		return autoRepository.save(auto);
	}
	@Override
	public Auto obtenerAuto(Long id) {

		return autoRepository.findById(id).get();
	}
	@Override
	public List<Auto> listaAuto() {
		// llamamos a la base de datos desde repository y de decimos que encuentre todos
		return autoRepository.findAll();
	}
	@Override
	public Auto obtenerAutoNombre(String marca) {
		// genero la busqueda de auto por marca
		return autoRepository.findByMarca(marca);
	}
	@Override
	public List<Auto> findAllByUsuario(String nombre) {
		// TODO Auto-generated method stub
		return autoRepository.findAllByUsuario(nombre);
	}
	


}
