package cl.yose.web.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

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
@Table(name="valoracionComentarios")
public class ValoracionComentario {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private Boolean meGusta;

//------------------------------------------------------------------------	
	// conexion entre clase de valoracion-comentario y usuario

	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;

//------------------------------------------------------------------------	
	// conexion entre clase de valoracion-comentario y comentario
	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "comentario_id")
	private Comentario comentario;

//--------------------------------------------------------------------------	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	// atributos de control
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

}
