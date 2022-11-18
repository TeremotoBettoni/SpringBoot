package cl.yose.web.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.yose.web.models.Posteo;
import cl.yose.web.repositories.PosteoRepository;


@Service
public class PosteoServiceImplement implements PosteoService {
	@Autowired
	public PosteoRepository posteoRepository;
	
	@Override
	public Posteo guardarPosteo(Posteo posteo) {
		// TODO Auto-generated method stub
		return posteoRepository.save(posteo);
	}	
	
}
