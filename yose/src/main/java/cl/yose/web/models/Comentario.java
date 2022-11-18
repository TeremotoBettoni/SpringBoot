package cl.yose.web.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "comentarios")
public class Comentario {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	@Size(min= 0, max = 240, message = "Excedes el limite de carácteres")
	private String texto;
	
	@Column(updatable = false) // una vez insertado el dato, no se puede modificar
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	// para modificar un registro
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
	
	public Comentario() {
		super();
	}
	
	public Comentario(Long id,
			@NotNull @Size(min = 0, max = 240, message = "Excedes el limite de carácteres") String texto,
			Date createdAt, Date updatedAt) {
		super();
		this.id = id;
		this.texto = texto;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

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
