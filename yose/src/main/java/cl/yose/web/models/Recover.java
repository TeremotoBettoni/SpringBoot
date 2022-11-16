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
@Table(name = "recovers")
public class Recover {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private Long idRecover;

	@NotNull
	@Size(min = 8, max = 30, message = "Error en el largo contraseña")
	private String code;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;	
	
	
	public Recover() {
		super();
	}
	
	
	public Recover(Long idRecover,
			@NotNull @Size(min = 8, max = 30, message = "Error en el largo contraseña") String code, Date createdAt,
			Date updatedAt) {
		super();
		this.idRecover = idRecover;
		this.code = code;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}
	

	public Long getIdRecover() {
		return idRecover;
	}


	public void setIdRecover(Long idRecover) {
		this.idRecover = idRecover;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
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
