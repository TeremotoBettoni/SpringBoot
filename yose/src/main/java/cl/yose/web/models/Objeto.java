package cl.yose.web.models;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Objeto {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
}
