package cl.yose.web.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

@Table(name="Usuarios")

public class Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private Long userId;
	private String nombre;
	private String apellido;
	private String email;
	private String contraseña;
	private String contraseña2;
	public Usuario() {
		super();
	}
	public Usuario(Long userId, String nombre, String apellido, String email, String contraseña, String contraseña2) {
		super();
		this.userId = userId;
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.contraseña = contraseña;
		this.contraseña2 = contraseña2;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
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
	@Override
	public String toString() {
		return "Usuario [userId=" + userId + ", nombre=" + nombre + ", apellido=" + apellido + ", email=" + email
				+ ", contraseña=" + contraseña + ", contraseña2=" + contraseña2 + "]";
	}

	
}
