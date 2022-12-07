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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name="usuarios")
public class Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotNull
	private String nombre;
	@NotNull
	private String apellido;
	@Column
	private String email;
	@Column
    @JsonIgnore
	private String contraseña;
	@Transient
	private String contraseña2;
	
	@OneToMany(mappedBy = "usuario",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Posteo> posteos;
	
	@OneToMany(mappedBy = "usuario",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Comentario> comentarios;
	
	@OneToMany(mappedBy = "usuario",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<ValoracionPosteo> valoracionesPosteos;
	
	@OneToMany(mappedBy = "usuario",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<ValoracionComentario> valoracionesComentarios;
	
	@OneToOne(mappedBy = "usuario", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Recover recover;
	
	@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Colega> colegas;
	
	
	@OneToOne(mappedBy = "usuario", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Imagen imagen;
	
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;	

	// atributos de control
	@PrePersist
	protected void onCreate(){
		this.createdAt = new Date();
		}
	@PreUpdate
	protected void onUpdate(){
		this.updatedAt = new Date();
		}

}
