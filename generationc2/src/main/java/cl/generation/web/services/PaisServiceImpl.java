package cl.generation.web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.generation.web.models.Pais;
import cl.generation.web.repositories.PaisRepository;

@Service
public class PaisServiceImpl implements PaisService{
	@Autowired
	private PaisRepository paisRepository;
	
	public Pais guardarPais(Pais pais) {
		return paisRepository.save(pais);
	}
}
