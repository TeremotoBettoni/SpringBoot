package cl.yose.web.services;

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
	

}
