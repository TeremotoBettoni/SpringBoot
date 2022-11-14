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
@Table(name="posteos")
public class Posteo {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idPost;
    
    @NotNull
    @Size(min = 5, max = 40, message = "Error en el ingreso del titulo")
    private String titulo;
    
    @NotNull
    @Size(min = 5, max = 40, message = "Error en el ingreso del contenido del posteo")
    private String texto;
    
    private String url;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    public Posteo() {
		super();
	}

	public Posteo(Long idPost,
			@NotNull @Size(min = 5, max = 40, message = "Error en el ingreso del titulo") String titulo,
			@NotNull @Size(min = 5, max = 40, message = "Error en el ingreso del contenido del posteo") String texto,
			String url, Date createdAt, Date updatedAt) {
		super();
		this.idPost = idPost;
		this.titulo = titulo;
		this.texto = texto;
		this.url = url;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}


	public Long getIdPost() {
		return idPost;
	}


	public void setIdPost(Long idPost) {
		this.idPost = idPost;
	}


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getTexto() {
		return texto;
	}


	public void setTexto(String texto) {
		this.texto = texto;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
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


	//atributos de control
    @PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
    }
    //agregar a la columna la fecha despues de actualizar o cambiar valores de el registro
    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }

}
