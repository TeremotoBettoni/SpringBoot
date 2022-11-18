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
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

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
	@NotNull
	private String email;
	@NotNull
	private String contraseña;
	@Transient
	private String contraseña2;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;	
	
	
	public Usuario() {
		super();
	}
	
	public Usuario(Long id, @NotNull String nombre, @NotNull String apellido, @NotNull String email,
			@NotNull String contraseña, String contraseña2, Date createdAt, Date updatedAt) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.contraseña = contraseña;
		this.contraseña2 = contraseña2;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContraseña() {
		return contraseña;
	}
	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}
	public String getContraseña2() {
		return contraseña2;
	}
	public void setContraseña2(String contraseña2) {
		this.contraseña2 = contraseña2;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	
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
