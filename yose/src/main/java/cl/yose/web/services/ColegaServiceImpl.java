package cl.yose.web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.Colega;
import cl.yose.web.repositories.ColegaRepository;

@Service
public class ColegaServiceImpl implements ColegaServices {

	@Autowired
	public ColegaRepository colegaRepository;

	@Override
	public Colega guardarColegas(Colega colega) {

		return colegaRepository.save(colega);
	}

}
