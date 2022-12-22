package cl.generation.web.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.generation.web.dto.AutoDTO;
import cl.generation.web.models.Auto;
import cl.generation.web.repositories.AutoRepository;


@Service
public class AutoServiceImpl implements AutoService{
	@Autowired
	private AutoRepository autoRepository;

	@Override
	public Auto guardarAuto(Auto auto) {
		if (auto.getId()!= null) {//edicion
			//logica de traspasar informacion de autoDTO a Auto
		}

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
	
	public void eliminarAuto(Long id) {
		// TODO Auto-generated method stub
		autoRepository.deleteById(id);

	}
	
	public List<AutoDTO> listarAutos() {
		List<Auto> autos = autoRepository.findAll();
		List<AutoDTO> autosDTO = new ArrayList<AutoDTO>();
		for (Auto auto : autos) {
			AutoDTO autoDTO = new AutoDTO();
			autoDTO.setId(auto.getId());
			autoDTO.setColor(auto.getColor());
			autoDTO.setMarca(auto.getMarca());
			autoDTO.setNombreUser(auto.getUsuario().getNombre());
			autoDTO.setApellidoUser(auto.getUsuario().getApellido());
			autoDTO.setUsuarioId(auto.getUsuario().getId());
			autosDTO.add(autoDTO);
			
		}
		return autosDTO;
	}

	

}
