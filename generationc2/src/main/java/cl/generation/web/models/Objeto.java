package cl.generation.web.models;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/*@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name="roles")*/
public class Objeto {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
}
