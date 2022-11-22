package cl.yose.web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.ValoracionPosteo;
import cl.yose.web.repositories.ValoracionPosteoRepository;

@Service
public class ValoracionPosteoServiceImpl implements ValoracionPosteoServices {
	
	@Autowired
	public ValoracionPosteoRepository valoracionPosteoRepository;
	
	@Override
	public ValoracionPosteo guardarValoracion(ValoracionPosteo valoracion) {
		// TODO Auto-generated method stub
		return valoracionPosteoRepository.save(valoracion);
	}

}