package cl.yose.web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.Valoracion;
import cl.yose.web.repositories.ValoracionRepository;

@Service
public class ValoracionServiceImpl implements ValoracionServices {
	
	@Autowired
	public ValoracionRepository valoracionRepository;
	
	@Override
	public Valoracion guardarValoracion(Valoracion valoracion) {
		// TODO Auto-generated method stub
		return valoracionRepository.save(valoracion);
	}

}
