package cl.yose.web.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.TypePosteo;
import cl.yose.web.repositories.TypePosteoRepository;

@Service
public class TypePosteoServiceImpl implements TypePosteoServices{
	
	@Autowired
	public TypePosteoRepository typePosteoRepository;
	
	@Override
	public TypePosteo guardarTypePosteo(TypePosteo tipeposteo) {
		return typePosteoRepository.save(tipeposteo);
	}
	
	@Override
	public TypePosteo obtenerDatosTypePosteo(Long id) {
		Boolean existe= typePosteoRepository.existsById(id);
			
		if(existe) {
			TypePosteo tipo= typePosteoRepository.findById(id).get();
			return tipo;
		}
		return null;
	}
		
	@Override
	public List<TypePosteo> listaTypePosteo() {
			
		return typePosteoRepository.findAll();
	
	}
	

}