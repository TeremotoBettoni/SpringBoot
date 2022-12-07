package cl.yose.web.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

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
@Entity
@Table(name = "comentarios")
public class Comentario {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Size(min= 0, max = 240, message = "Excedes el limite de carácteres")
	private String texto;
	
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="usuario_id")
	private Usuario usuario;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="posteo_id")
	private Posteo posteo;
	
	
	@OneToMany(mappedBy = "comentario",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<ValoracionComentario> valoracionesComentarios;
	
	@Column(updatable = false) // una vez insertado el dato, no se puede modificar
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	// para modificar un registro
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
	// Atributos de control
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	// antes de actualizar un dato, le agrega la fecha.
	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

}
