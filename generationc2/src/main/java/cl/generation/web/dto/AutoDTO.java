package cl.generation.web.dto;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class AutoDTO {
	private Long id;
	private String marca;
	private String color;
	private String nombreUser;
	private String apellidoUser;

}